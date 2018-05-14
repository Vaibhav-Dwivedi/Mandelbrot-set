Hello world in Octave / MATLAB. Draws the Mandelbrot fractal.

Theory
------

The famous [Mandelbrot set](http://en.wikipedia.org/wiki/Mandelbrot_set) is
a set of points in the complex plane.  In essence, what we want to find out
is if the iterative function C below will _converge_ to some constant or _diverge_
to infinity.

The function is

  `C_{n+1} = C_{n}^2 + C_{0}`

with the initial condition simply formed by taking the coordinates in the
complex plane,

  `C_{0} = x + iy`

Looking at the function, one can easily see that for big initial values, the
function should diverge.  But for values close to origo (i.e., for |x| and
|y| less than 1), we would expect the function to converge to zero, since
the product of two numbers less than one will always be less than either of
the factors (e.g., 0.5 x 0.4 = 0.2, which is less than both factors).

But if we actually plot it, what we get out isn't any nice plot.  Instead,
we get an amazingly complex and fractured plot.  This is the Mandelbrot set.

You can zoom forever into the plot, and it will present you with an unending
complex shape.  One can also calculate it's
so-called [Hausdorff dimension](http://en.wikipedia.org/wiki/Hausdorff_dimension),
which yields a noninteger number.  Thus, it's a fractal.

Calculating the Mandelbrot Set
------------------------------

Calculating the Mandelbrot set is easy if you do it numerically.

Take any point `C_0 = (x, y)` and then calculate `C_1 = (x+iy)^2 + (x+iy)`
and continue doing this.  For practical purposes, let's predetermine a
_threshold_ value.  If the magnitude of `C` (defined for complex numbers
as being the distance to origo, or `sqrt(x^2+y^2)`) ever becomes larger than
this threshold value we will assume that it will diverge into infinity.  
If so, stop the calculation and plot a _black dot_ at the current location.

If `C` has not exceeded the threshold value after a predetermined number of
iterations, we will assume that the current parameters makes the function
converge.  In this case, plot a non-black dot at the current location.