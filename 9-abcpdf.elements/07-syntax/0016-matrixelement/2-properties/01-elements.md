# Elements Property

## Notes

The six elements in this list represent the following elements of the three by three transformation matrix:.

[a, b, 0].

[c, d, 0].

[e, f, 1].

The Elements array holds the six values [a, b, c, d, e, f] of the transformation matrix. These values define the affine transformation applied to coordinates: x' = a*x + c*y + e, y' = b*x + d*y + f.

The e and f values encode translation, a and d encode scaling on the x and y axes, and b and c introduce rotation or shear. All six values together define a general affine transformation.
