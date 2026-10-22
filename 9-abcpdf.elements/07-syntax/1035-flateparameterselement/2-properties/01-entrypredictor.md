# EntryPredictor Property

## Notes

Represents the "Predictor" entry of the flate parameters object.

It is an optional entry defined as part of the PDF 1.0 specification.

It contains an integer representing a PDF numeric object.

The PDF specification states that this item assumes a value of 1 if no value has been provided.

For definitive details see:.

The ISO PDF Specification, ISO 32000-1:2008 PDF 1.7; Table: 8, page 27.

The ISO PDF Specification, ISO 32000-2:2017 PDF 2.0; Table: 8, page 40.

The Predictor entry selects the pre-compression transformation applied to the data before deflate compression. Values 2 through 15 select TIFF predictors; values 10 through 15 select PNG predictors. A value of 1 means no prediction.

PNG predictor 12 (Up) works well for many types of data by subtracting each byte from the corresponding byte in the previous row. PNG predictor 15 (Optimum) selects the best filter per row, producing the highest compression at the cost of more computation.
