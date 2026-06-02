# IncludeDetailedBuildInfo Property

## Notes

Whether detailed information on the OS and crypto environment is included in the signature.

Digital signatures in PDF documents include an optional Prop_Build dictionary that records information about the state of the computer environment used during signing. This dictionary typically captures details such as the name and version of the software module that created the signature, the build date of that software, and the operating system on which the signing took place. For example, a viewing application later verifying the signature can read which version of ABCpdf, running on which OS version, was used to produce the signature.

Some organizations consider these environment details to be sensitive information. Disclosing the exact build of the operating system or the specific software revision could reveal system configurations that some clients prefer to keep private. The new property allows you to choose whether this detailed environment information is embedded into the signature or whether only minimal information is included, giving you finer control over the balance between forensic audit value and data privacy.

## Example

None.

