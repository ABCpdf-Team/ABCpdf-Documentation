# Log Property

&nbsp;

## Notes

During a read operation certain problems may be encountered. Problems that can be solved but perhaps only by making assumptions. Problems that might not justify an error but could be raised as a warning.

For example during the EPS import process an unavailable font might be encountered. ABCpdf might substitute another font to replace the missing one. The output would probably look very similar to the intended output but it might not be identical.

ABCpdf will log these types of events using this property.

