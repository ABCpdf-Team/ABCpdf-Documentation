# Similarity Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `Dictionary<Page, float[]>` | null | No | A measure of the visual change introduced by the flattening operation. |

## Notes

This property provides a quantitative measure of the visual change introduced by the flattening operation.

You can control the metric used by setting the SimilarityMetric property before starting the flattening operation.

The idea of the transparency flattening operation is to take a document that has some transparent objects and produce a document that only has non-transparent objects. Visually, the two documents should look the same, however occasionally they may not. These confidence settings should enable one to automatically make decisions about how well the flattening operation worked.

The metric is per page and is provided as an array of floating-point values, one for each component of the destination color space (for example, cyan, magenta, yellow, and black in a CMYK document). To get a single similarity score, you typically combine these component values using an arithmetic mean or another aggregation method that suits your quality assessment workflow.

The specific meaning of these values depends on the selected similarity algorithm. For the Structural Similarity Index Measure (SSIM) , each component value ranges from -1 to 1, where 1 indicates perfect structural similarity between the original and flattened page, 0 indicates no similarity, and -1 indicates perfect anti-similarity or negative correlation. SSIM evaluates image quality based on three perceptual aspects: luminance (overall brightness), contrast (the range of intensity values), and structure (the correlation patterns within the image). Because SSIM takes structural information into account, it typically aligns more closely with how humans perceive visual quality. However, SSIM has limitations: it is not fast to compute, it is almost insensitive to changes in brightness, contrast, hue, and saturation, and it may not handle geometric distortions such as displacement, scaling, or rotation well.

For the Peak Signal to Noise Ratio (PSNR) algorithm, the property returns an eight-bit multi-component PSNR value measured in decibels (dB). Lower PSNR values indicate more similarity between the original and flattened page, with a value of about 40 dB commonly considered a sensible quality cutoff. PSNR measures the ratio between the maximum possible signal power and the power of noise or error introduced by processing. It is simple to compute and has a long history of usage, making it easy to benchmark new algorithms against established results. However, the primary criticism of PSNR is that it treats all pixel errors equally without considering the context in which they occur, which can lead to situations where its scores do not correlate well with human visual perception.

In practical terms, PSNR serves well for straightforward comparisons where computational speed is important, such as during rapid iterative development or when evaluating encoding optimization. SSIM is generally better suited for assessing final output quality, especially when preserving structural details such as text, edges, and textures is essential. For the highest-fidelity quality control, you may choose to use both metrics together: PSNR as a fast indicator of gross pixel differences, and SSIM as a more perceptually reliable check on structural integrity.

## Example

See the [Flatten](../1-methods/flatten.md) method.
