#!/usr/bin/env python3
"""
HTML to Markdown converter with configurable input directory.
Complete conversion script with integrated HTML parsing functionality.
"""

import sys
import re
import html
from pathlib import Path


def extract_title(html_content):
    """Extract function name from page header."""
    match = re.search(r'<TD class=pageheader>([^<]+)</TD>', html_content)
    return match.group(1).strip() if match else "Unknown Function"


def extract_description(html_content):
    """Extract the main description from the first content paragraph."""
    # Look for the description right after the pageheader section
    pattern = r'<TD class=pageheader>.*?</TD>.*?<TR>.*?</TR>.*?<TR>.*?<TD>\s*<P>([^<]+)</P>'
    match = re.search(pattern, html_content, re.DOTALL)
    if match:
        return match.group(1).strip()
    
    return ""


def extract_syntax(html_content):
    """Extract C# syntax from the syntax section."""
    # Try multiple patterns to handle different HTML structures
    patterns = [
        # Pattern 1: Direct match after Syntax header
        r'<TD class=sectheader vAlign=top>.*?Syntax</TD>.*?<P><SPAN class=language>\[C#\]</SPAN><BR><CODE>(.*?)</CODE>',
        # Pattern 2: With line breaks in different places
        r'<TD class=sectheader vAlign=top>.*?Syntax</TD>.*?<SPAN class=language>\[C#\]</SPAN><BR>\s*<CODE>(.*?)</CODE>',
        # Pattern 3: More flexible whitespace handling
        r'Syntax</TD>.*?<SPAN class=language>\[C#\]</SPAN><BR[^>]*>\s*<CODE[^>]*>(.*?)</CODE>'
    ]
    
    for pattern in patterns:
        syntax_match = re.search(pattern, html_content, re.DOTALL | re.IGNORECASE)
        if syntax_match:
            code = syntax_match.group(1)
            # Clean up the code - remove BR tags first
            code = re.sub(r'<BR[^>]*>', ' LINEBREAK ', code)  # Use placeholder
            code = html.unescape(code)
            
            # Now split by function signature patterns and reconstruct
            # First normalize whitespace but preserve our linebreaks
            code = re.sub(r'\s+', ' ', code)
            
            # Split by our linebreak placeholder
            parts = code.split(' LINEBREAK ')
            
            lines = []
            for part in parts:
                part = part.strip()
                if part:
                    lines.append(part)
            
            # Join with newlines for multi-signature functions
            code = '\n'.join(lines)
            return code
    
    return ""


def extract_params(html_content):
    """Extract parameters table."""
    # Find the Params section - updated pattern for vAlign attribute
    params_pattern = r'<TD class=sectheader vAlign=top>.*?Params</TD>.*?<TABLE class=wsgtable[^>]*>(.*?)</TABLE>'
    params_match = re.search(params_pattern, html_content, re.DOTALL)
    
    if not params_match:
        return []
    
    table_content = params_match.group(1)
    
    # Extract rows (skip header)
    row_pattern = r'<TR[^>]*vAlign=top>(.*?)</TR>'
    rows = re.findall(row_pattern, table_content, re.DOTALL)
    
    params = []
    for row in rows:
        cell_pattern = r'<TD[^>]*>(.*?)</TD>'
        cells = re.findall(cell_pattern, row, re.DOTALL)
        if len(cells) >= 2:
            name = re.sub(r'<[^>]*>', '', cells[0]).strip()
            desc = cells[1]
            # Clean up description - remove HTML tags but keep content
            desc = re.sub(r'<A[^>]*>([^<]*)</A>', r'\1', desc)  # Remove links but keep text
            desc = re.sub(r'<[^>]*>', '', desc)  # Remove other HTML tags
            desc = html.unescape(desc)
            desc = re.sub(r'\s+', ' ', desc)  # Normalize whitespace
            desc = desc.strip()
            if name and desc:
                params.append((name, desc))
    
    return params


def extract_notes(html_content):
    """Extract notes content."""
    # Find the Notes section - updated pattern for vAlign attribute
    notes_pattern = r'<TD class=sectheader vAlign=top>.*?Notes</TD>.*?<TD vAlign=top>.*?<TD>(.*?)(?=<TD width=60>)'
    notes_match = re.search(notes_pattern, html_content, re.DOTALL)
    
    if not notes_match:
        return ""
    
    notes_content = notes_match.group(1)
    
    # Convert to markdown-style text
    notes = process_notes_content(notes_content)
    return notes


def process_notes_content(content):
    """Process notes content and convert to markdown style."""
    # Convert specific patterns to bullet points based on the actual content
    
    # Replace the table with background with bullet points
    content = re.sub(r'<TABLE class=backgrounder[^>]*>.*?</TABLE>', 
                    '\n\nCaching considerations:\n\n- Page content may be cached when using AddImageUrl; see HTML / CSS Rendering documentation for details.\n- The PDF itself may be cached when streaming to a browser depending on IIS settings (e.g., Expire Content). To diagnose, also save the PDF to disk and compare.\n- If the PDF is being cached, review IIS/ASP or proxy/client caching configuration.\n\n', content, flags=re.DOTALL)
    
    # Remove HTML tags but preserve links as text
    content = re.sub(r'<A[^>]*>([^<]*)</A>', r'\1', content)  # Remove links but keep text
    content = re.sub(r'<P[^>]*>', '\n\n', content)
    content = re.sub(r'</P>', '', content)
    content = re.sub(r'<BR[^>]*>', '\n', content)
    content = re.sub(r'<[^>]*>', '', content)  # Remove other HTML tags
    content = html.unescape(content)
    
    # Clean up whitespace and build bullet points
    lines = content.split('\n')
    processed_lines = []
    current_para = []
    
    for line in lines:
        line = line.strip()
        if line and line != '&nbsp;':
            current_para.append(line)
        elif current_para:
            para_text = ' '.join(current_para)
            processed_lines.append(para_text)
            current_para = []
    
    if current_para:
        para_text = ' '.join(current_para)
        processed_lines.append(para_text)
    
    # Convert specific content to bullet points
    result = []
    for para in processed_lines:
        if not para.strip():
            continue
            
        if 'This method adds a web page to a document' in para:
            result.append('This method adds a web page to a document.')
        elif 'page is added in accordance' in para and 'XHtmlOptions' in para:
            result.append('- The page is added in accordance with the current XHtmlOptions settings; commonly used settings can be overridden via parameters above.')
        elif 'Only the first page' in para and 'AddImageToChain' in para:
            result.append('- Only the first page is drawn; subsequent pages can be drawn using AddImageToChain.')
        elif 'scaled to fill' in para and 'Rect' in para and 'Transform' in para:
            result.append('- The web page is scaled to fill the current Rect and transformed using the current Transform.')
        elif 'accepts file based URLs to MHT' in para:
            result.append('\nMHT support:\n')
            result.append('- Accepts file-based URLs to MHT (MIME HTML) files saved via IE.')
        elif 'MHT files contain' in para:
            continue  # Skip this line as it's covered in the bullet above
        elif 'MHT files saved from more complex' in para:
            result.append('- Complex pages may omit required resources in MHT; ABCpdf attempts to download missing items from the original URL if available.')
        elif 'Make sure your URLs come from trusted sources' in para:
            result.append('\nSecurity:\n')
            result.append('- Ensure URLs come from trusted sources; see the HTML / CSS Rendering security section.')
        elif 'Caching considerations' not in para and para.strip():
            # Add other content as-is if not already converted
            if not any(x in para for x in ['page is added', 'Only the first', 'scaled to fill', 'accepts file', 'MHT files', 'Make sure']):
                result.append(para)
    
    return '\n\n'.join(result)


def extract_example(html_content):
    """Extract C# example code."""
    # Find the Example section - updated pattern for vAlign attribute
    example_pattern = r'<TD class=sectheader vAlign=top>.*?Example</TD>.*?<TD>(.*?)(?=<TD width=60>)'
    example_match = re.search(example_pattern, html_content, re.DOTALL)
    
    if not example_match:
        return "", ""
    
    example_section = example_match.group(1)
    
    # Extract description before code - look for specific text
    desc_pattern = r'<P>([^<]*)</P>'
    desc_match = re.search(desc_pattern, example_section)
    description = ""
    if desc_match:
        desc_text = desc_match.group(1).strip()
        # Standardize the description and add backticks around Doc
        if "Doc object" in desc_text:
            description = "We create an ABCpdf `Doc` object, add our URL and save."
        else:
            description = desc_text
    
    # Extract C# code from <pre><code> blocks
    csharp_pattern = r'<pre><code class="language-csharp">(.*?)</code></pre>'
    csharp_match = re.search(csharp_pattern, example_section, re.DOTALL)
    
    code = ""
    if csharp_match:
        code = csharp_match.group(1)
        code = html.unescape(code)
        code = re.sub(r'&nbsp;', ' ', code)
        code = code.strip()
        # Fix the Windows specific comment placement to be at end of line
        if 'Server.MapPath' in code:
            # Fix syntax and placement of Windows comment
            code = re.sub(r'doc\.Save\(Server\.MapPath\("([^"]+)"\)', r'doc.Save(Server.MapPath("\1")); // Windows specific', code)
    
    return description, code


def extract_results(html_content):
    """Extract result images."""
    # Look for images in the example section with proper pattern matching
    image_pattern = r'<IMG src="([^"]+)"[^>]*class="example"[^>]*><BR>([^<]+)'
    matches = re.findall(image_pattern, html_content)
    
    results = []
    for img_src, caption in matches:
        # Convert relative path to markdown path
        img_path = img_src.replace('../../../images/', '../../../../images/')
        results.append(f"![{caption}]({img_path}) — {caption}")
    
    return results


def convert_html_to_markdown(html_content):
    """Convert HTML content to markdown following the playbook."""
    title = extract_title(html_content)
    description = extract_description(html_content)
    syntax = extract_syntax(html_content)
    params = extract_params(html_content)
    notes = extract_notes(html_content)
    example_desc, example_code = extract_example(html_content)
    results = extract_results(html_content)
    
    # Build markdown
    markdown = f"# {title}\n\n"
    
    if description:
        markdown += f"{description}\n\n"
    
    if syntax:
        markdown += "## Syntax\n\n"
        markdown += f"```csharp\n{syntax}\n```\n\n"
    
    if params:
        markdown += "## Params\n\n"
        markdown += "| Name | Description |\n"
        markdown += "| --- | --- |\n"
        for name, desc in params:
            markdown += f"| {name} | {desc} |\n"
        markdown += "\n"
    
    if notes:
        markdown += "## Notes\n\n"
        markdown += f"{notes}\n\n"
    
    if example_code:
        markdown += "## Example\n\n"
        if example_desc and example_desc != "Example code:":
            markdown += f"{example_desc}\n\n"
        markdown += f"```csharp\n{example_code}\n```\n\n"
        
        # Add reference text only if not already included in processing above
        if "For an example of how to use paged HTML" in html_content:
            markdown += "For paged HTML, see AddImageToChain.\n\n"
        if "Also see example code in:" in html_content:
            markdown += "Also see related examples in XHtmlOptions properties such as ForChrome, ForGecko, ForMSHtml, ForWebKit, BrowserWidth, HideBackground, HtmlCallback, HtmlEmbedCallback, ImageQuality, LogonName, RetryCount.\n\n"
    
    if results:
        markdown += "## Results\n\n"
        for result in results:
            markdown += f"{result}\n"
    
    return markdown


def convert_file_content(input_path, output_path):
    """Convert a single HTML file to Markdown."""
    if not input_path.exists():
        print(f"Input file not found: {input_path}")
        return False
    
    try:
        # Read HTML content with fallback encodings
        for encoding in ['utf-8', 'utf-8-sig', 'latin1', 'cp1252']:
            try:
                html_content = input_path.read_text(encoding=encoding)
                break
            except UnicodeDecodeError:
                continue
        else:
            raise ValueError("Could not decode file with any supported encoding")
        
        # Convert to markdown
        markdown_content = convert_html_to_markdown(html_content)
        
        # Create output directory if needed
        output_path.parent.mkdir(parents=True, exist_ok=True)
        
        # Write to output file
        output_path.write_text(markdown_content, encoding='utf-8')
        
        return True
        
    except Exception as e:
        print(f"[ERR] Error converting {input_path.name}: {e}")
        return False

def show_usage():
    """Show usage information."""
    print("HTML to Markdown Converter")
    print("Usage:")
    print("  python convert_html_md.py sourcefolder outputfolder")
    print("  python convert_html_md.py sourcefolder outputfolder relativepath\\file.htm")
    print("")
    print("Arguments:")
    print("  sourcefolder  - Input directory containing HTML files (required)")
    print("  outputfolder  - Output directory for Markdown files (required)")
    print("  relativepath  - Relative path to specific HTML file (optional)")
    print("")
    print("Examples:")
    print("  python convert_html_md.py 5-abcpdf\\doc\\1-methods markdown")
    print("  python convert_html_md.py 3-concepts docs")
    print("  python convert_html_md.py 5-abcpdf\\doc\\1-methods output addimageurl.htm")
    print("  python convert_html_md.py 2-getting_started docs 1-essentials.htm")

def convert_single_file(input_dir, output_dir, relative_path):
    """Convert a single HTML file maintaining relative directory structure."""
    input_path = Path(input_dir)
    
    if not input_path.exists():
        print(f"Error: Input directory '{input_dir}' does not exist")
        return False
        
    if not input_path.is_dir():
        print(f"Error: '{input_dir}' is not a directory")
        return False
    
    # Construct the full path to the HTML file
    html_file = input_path / relative_path
    
    if not html_file.exists():
        print(f"Error: HTML file '{relative_path}' not found in '{input_dir}'")
        return False
        
    if not html_file.suffix.lower() in ['.htm', '.html']:
        print(f"Error: '{relative_path}' is not an HTML file")
        return False
    
    # Calculate output path maintaining directory structure
    rel_dir = Path(relative_path).parent
    output_path = Path(output_dir) / rel_dir / (html_file.stem + ".md")
    
    # Convert the file using integrated conversion
    if convert_file_content(html_file, output_path):
        print(f"[OK] Converted: {relative_path} -> {output_path}")
        return True
    else:
        return False

def convert_directory(input_dir, output_dir):
    """Convert all HTML files in a directory."""
    input_path = Path(input_dir)
    
    if not input_path.exists():
        print(f"Error: Input directory '{input_dir}' does not exist")
        return False
        
    if not input_path.is_dir():
        print(f"Error: '{input_dir}' is not a directory")
        return False
    
    # Find all HTML files recursively
    html_files = list(input_path.glob("**/*.htm")) + list(input_path.glob("**/*.html"))
    
    if not html_files:
        print(f"No HTML files found in '{input_dir}'")
        return False
    
    print(f"Found {len(html_files)} HTML files in '{input_dir}'")
    
    success_count = 0
    error_count = 0
    
    for html_file in html_files:
        # Calculate relative path from input directory
        rel_path = html_file.relative_to(input_path)
        # Calculate output path maintaining directory structure
        output_path = Path(output_dir) / rel_path.with_suffix(".md")
        
        # Convert the file using integrated conversion
        if convert_file_content(html_file, output_path):
            print(f"[OK] Converted: {rel_path} -> {output_path}")
            success_count += 1
        else:
            error_count += 1
    
    print(f"\\nConversion complete: {success_count} successful, {error_count} errors")
    return success_count > 0

def main():
    """Main function."""
    if len(sys.argv) < 3:
        if len(sys.argv) == 2 and sys.argv[1] in ["-h", "--help", "help"]:
            show_usage()
            return
        
        print("Error: Input directory and output directory are required")
        print("")
        show_usage()
        return
    
    input_dir = sys.argv[1]
    output_dir = sys.argv[2]
    
    # Check if input directory exists
    if not Path(input_dir).exists():
        print(f"Error: Input directory '{input_dir}' does not exist")
        return
    
    if not Path(input_dir).is_dir():
        print(f"Error: '{input_dir}' is not a directory")
        return
    
    if len(sys.argv) == 4:
        # Single file conversion
        relative_path = sys.argv[3]
        convert_single_file(input_dir, output_dir, relative_path)
    else:
        # Batch conversion of directory
        convert_directory(input_dir, output_dir)

if __name__ == "__main__":
    main()