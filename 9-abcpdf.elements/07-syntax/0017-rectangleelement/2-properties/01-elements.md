# Elements Property

## Notes

A rectangle consists of an array of four values - two pairs of pairs. The first pair represent the x and y coordinates of the lower left of the rectangle,.

the second pair represent the x and y coordinates of the upper right of the rectangle. So [lx, ly, ux, uy].

Although the pairs conventially represent the lower left and upper right corners, it is in fact legal to represent any diagaonally opposed corners and.

PDF applications will automatically normalize these when they are found.

The Elements array holds the four values [llx, lly, urx, ury] defining the rectangle's lower-left and upper-right corners in the applicable coordinate space.

A conforming reader normalises the rectangle so that llx is no greater than urx and lly is no greater than ury, swapping values if necessary to ensure a valid rectangle.
