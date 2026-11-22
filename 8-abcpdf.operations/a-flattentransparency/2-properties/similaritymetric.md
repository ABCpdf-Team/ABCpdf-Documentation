# SimilarityMetric Property

| Type | Default | Read Only | Description |
| --- | --- | --- | --- |
| `SimilarityAlgorithm` | None | No | The type of visual change metric to use. |

## Notes

This property provides control over the metric used to make a quantitative measure of visual change introduced by the flattening operation.

The SimilarityAlgorithm enumeration may take the following values:

- None - No comparison algorithm.
- PeakSignalToNoise - Peak Signal to Noise Ratio (PSNR) algorithm. Eight bit scale multi-component.
- StructuralSimilarityIndexMeasure - Structural Similarity Index Measure (SSIM) algorithm. Multi-component.

The result of any changes will be found in the [Similarity](similarity.md) property after the flattening operation has completed.
