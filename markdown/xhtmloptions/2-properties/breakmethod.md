# BreakMethod Property

&nbsp;

## Notes

This property specifies the page breaking algorithm.

The HtmlBreakMethodType enumeration can take any of the following values:

CumulativeCohesion - uses the cumulative cohesion of all objects occupying each horizontal line/vertical position. MaximumCohesion - uses the maximum cohesion among objects occupying each horizontal line/vertical position.

in combination with any of the following values:

GlobalOptimum - optimizes the break position globally around a candidate position. LocalOptimum - optimizes the break position locally around a candidate position. NoOptimization - no optimization.

Each rendered objects in an HTML page has associated cohesion. Text, images, and form controls converted to form fields have high cohesion whereas simple lines and shapes have low cohesion.

Page breaks are selected at positions with low cohesion.

Use MaximumCohesion when you want to break at positions where there are a lot of low-cohesion objects and no high-cohesion objects.

The break position can be optimized according to the cohesion. If it is optimized locally, the cohesion values of positions between the final position and the candidate position is a monotone function.

