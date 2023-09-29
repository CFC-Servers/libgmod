--- An easing library that allows you to interpolate with various kinds of smoothing [functions](https://easings.net/). To use with Global.Lerp, input what you would to the fraction argument in one of these easing functions and then the output of that into the Global.Lerp fraction argument.  
--- <example>  
--- <description>Example usage with Lerp and math.ease.InSine</description>  
--- <code>  
--- -- Define a wrapper function to make it easier to work with  
--- local function easedLerp(fraction, from, to)  
--- return Lerp(math.ease.InSine(fraction), from, to)  
--- end  
--- -- Compare with the non-eased version of Lerp  
--- print(easedLerp(0.25, 0, 1))  
--- print(Lerp(0.25, 0, 1))  
--- print(easedLerp(0.25, 0, 5))  
--- print(Lerp(0.25, 0, 5))  
--- </code>  
--- <output>  
--- ```  
--- 0.076120467488713  
--- 0.25  
--- 0.38060233744357  
--- 1.25  
--- ```  
--- </output>  
--- </example>  
--- <example>  
--- A brief visual example of different easing methods  
--- </example>  
_G.math = {}
---  menu|client|server
--- Calculates the difference between two angles.  
--- @param a number @The first angle.
--- @param b number @The second angle.
--- @return number @The difference between the angles between -180 and 180
function math.AngleDifference(a, b)
end

---  menu|client|server
--- Gradually approaches the target value by the specified amount.  
--- @param current number @The value we're currently at.
--- @param target number @The target value
--- @param change number @The amount that the current value is allowed to change by to approach the target
--- @return number @New current value, closer to the target than it was previously.
function math.Approach(current, target, change)
end

---  menu|client|server
--- Increments an angle towards another by specified rate.  
--- ℹ **NOTE**: This function is for numbers representing angles (0-360), NOT Angle objects!  
--- @param currentAngle number @The current angle to increase
--- @param targetAngle number @The angle to increase towards
--- @param rate number @The amount to approach the target angle by
--- @return number @Modified angle
function math.ApproachAngle(currentAngle, targetAngle, rate)
end

---  menu|client|server
--- Basic code for Bezier-Spline algorithm.  
--- @param tDiff number @From 0 to 1, where alongside the spline the point will be.
--- @param tPoints table @A table of Vectors
--- @param tMax number @Just leave this at 1.
--- @return Vector @Point on Bezier curve, related to tDiff.
function math.BSplinePoint(tDiff, tPoints, tMax)
end

---  menu|client|server
--- Converts a binary string into a number.  
--- @param string string @Binary string to convert
--- @return number @Base 10 number.
function math.BinToInt(string)
end

---  menu|client|server
--- Cubic Hermite spline algorithm.  
--- @param frac number @From 0 to 1, where alongside the spline the point will be.
--- @param point0 Vector @First point for the spline.
--- @param tan0 Vector @Tangent for the first point for the spline.
--- @param point1 Vector @Second point for the spline.
--- @param tan1 Vector @Tangent for the second point for the spline.
--- @return Vector @Point on the cubic Hermite spline, at given fraction.
function math.CHSpline(frac, point0, tan0, point1, tan1)
end

---  menu|client|server
--- Clamps a number between a minimum and maximum value.  
--- @param input number @The number to clamp.
--- @param min number @The minimum value, this function will **never** return a number less than this.
--- @param max number @The maximum value, this function will **never** return a number greater than this.
--- @return number @The clamped value.
function math.Clamp(input, min, max)
end

---  menu|client|server
--- Lerp point between 4 control points with cubic bezier.  
--- See math.QuadraticBezier for a similar function which works with 3 control points.  
--- @param frac number @The fraction for finding the result
--- @param p0 Vector @First control point
--- @param p1 Vector @First tangent
--- @param p2 Vector @Second tangent
--- @param p3 Vector @Second control point
--- @return Vector @Point between control points at the specified fraction
function math.CubicBezier(frac, p0, p1, p2, p3)
end

---  menu|client|server
--- 🛑 **DEPRECATED**: You should use math.Distance instead  
--- Returns the difference between two points in 2D space. Alias of math.Distance.  
--- @param x1 number @X position of first point
--- @param y1 number @Y position of first point
--- @param x2 number @X position of second point
--- @param y2 number @Y position of second point
--- @deprecated
--- @return number @Distance between the two points.
function math.Dist(x1, y1, x2, y2)
end

---  menu|client|server
--- Returns the difference between two points in 2D space.  
--- @param x1 number @X position of first point
--- @param y1 number @Y position of first point
--- @param x2 number @X position of second point
--- @param y2 number @Y position of second point
--- @return number @Distance between the two points
function math.Distance(x1, y1, x2, y2)
end

---  menu|client|server
--- Returns the squared difference between two points in 2D space. This is computationally faster than math.Distance.  
--- @param x1 number @X position of first point
--- @param y1 number @Y position of first point
--- @param x2 number @X position of second point
--- @param y2 number @Y position of second point
--- @return number @The squared distance between the two points.
function math.DistanceSqr(x1, y1, x2, y2)
end

---  menu|client|server
--- Calculates the progress of a value fraction, taking in to account given easing fractions  
--- @param progress number @Fraction of the progress to ease, from 0 to 1
--- @param easeIn number @Fraction of how much easing to begin with
--- @param easeOut number @Fraction of how much easing to end with
--- @return number @"Eased" Value, from 0 to 1
function math.EaseInOut(progress, easeIn, easeOut)
end

---  menu|client|server
--- Eases in by reversing the direction of the ease slightly before returning.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.InBack(fraction)
end

---  menu|client|server
--- Eases in like a bouncy ball.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.InBounce(fraction)
end

---  menu|client|server
--- Eases in using a circular function.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InCirc(fraction)
end

---  menu|client|server
--- Eases in by cubing the fraction.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InCubic(fraction)
end

---  menu|client|server
--- Eases in like a rubber band.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.InElastic(fraction)
end

---  menu|client|server
--- Eases in using an exponential equation with a base of 2 and where the fraction is used in the exponent.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InExpo(fraction)
end

---  menu|client|server
--- Eases in and out by reversing the direction of the ease slightly before returning on both ends.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.InOutBack(fraction)
end

---  menu|client|server
--- Eases in and out like a bouncy ball.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.InOutBounce(fraction)
end

---  menu|client|server
--- Eases in and out using a circular function.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InOutCirc(fraction)
end

---  menu|client|server
--- Eases in and out by cubing the fraction.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InOutCubic(fraction)
end

---  menu|client|server
--- Eases in and out like a rubber band.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.InOutElastic(fraction)
end

---  menu|client|server
--- Eases in and out using an exponential equation with a base of 2 and where the fraction is used in the exponent.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InOutExpo(fraction)
end

---  menu|client|server
--- Eases in and out by squaring the fraction.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InOutQuad(fraction)
end

---  menu|client|server
--- Eases in and out by raising the fraction to the power of 4.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InOutQuart(fraction)
end

---  menu|client|server
--- Eases in and out by raising the fraction to the power of 5.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InOutQuint(fraction)
end

---  menu|client|server
--- Eases in and out using math.sin.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InOutSine(fraction)
end

---  menu|client|server
--- Eases in by squaring the fraction.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InQuad(fraction)
end

---  menu|client|server
--- Eases in by raising the fraction to the power of 4.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InQuart(fraction)
end

---  menu|client|server
--- Eases in by raising the fraction to the power of 5.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InQuint(fraction)
end

---  menu|client|server
--- Eases in using math.sin.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InSine(fraction)
end

---  menu|client|server
--- Converts an integer to a binary (base-2) string.  
--- @param int number @Number to be converted.
--- @return string @Binary number string
function math.IntToBin(int)
end

---  menu|client|server
--- Normalizes angle, so it returns value between -180 and 180.  
--- @param angle number @The angle to normalize, in degrees.
--- @return number @The normalized angle, in the range of -180 to 180 degrees.
function math.NormalizeAngle(angle)
end

---  menu|client|server
--- Eases out by reversing the direction of the ease slightly before finishing.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.OutBack(fraction)
end

---  menu|client|server
--- Eases out like a bouncy ball.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.OutBounce(fraction)
end

---  menu|client|server
--- Eases out using a circular function.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.OutCirc(fraction)
end

---  menu|client|server
--- Eases out by cubing the fraction.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.OutCubic(fraction)
end

---  menu|client|server
--- Eases out like a rubber band.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.OutElastic(fraction)
end

---  menu|client|server
--- Eases out using an exponential equation with a base of 2 and where the fraction is used in the exponent.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.OutExpo(fraction)
end

---  menu|client|server
--- Eases out by squaring the fraction.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.OutQuad(fraction)
end

---  menu|client|server
--- Eases out by raising the fraction to the power of 4.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.OutQuart(fraction)
end

---  menu|client|server
--- Eases out by raising the fraction to the power of 5.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.OutQuint(fraction)
end

---  menu|client|server
--- Eases out using math.sin.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.OutSine(fraction)
end

---  menu|client|server
--- Lerp point between 3 control points with quadratic bezier.  
--- See math.CubicBezier for a function which works with 4 control points.  
--- @param frac number @The fraction for finding the result
--- @param p0 Vector @First control point
--- @param p1 Vector @Tangent
--- @param p2 Vector @Second control point
--- @return Vector @Point between control points at the specified fraction
function math.QuadraticBezier(frac, p0, p1, p2)
end

---  menu|client|server
--- Returns a random float between min and max.  
--- See also math.random  
--- @param min number @The minimum value.
--- @param max number @The maximum value.
--- @return number @Random float between min and max.
function math.Rand(min, max)
end

---  menu|client|server
--- Remaps the value from one range to another  
--- @param value number @The value
--- @param inMin number @The minimum of the initial range
--- @param inMax number @The maximum of the initial range
--- @param outMin number @The minimum of new range
--- @param outMax number @The maximum of new range
--- @return number @The number in the new range
function math.Remap(value, inMin, inMax, outMin, outMax)
end

---  menu|client|server
--- Rounds the given value to the nearest whole number or to the given decimal places.  
--- @param value number @The value to round.
--- @param decimals? number @The decimal places to round to.
--- @return number @The rounded value.
function math.Round(value, decimals)
end

---  menu|client|server
--- Snaps a number to the closest multiplicative of given number. See also Angle:SnapTo.  
--- @param input number @The number to snap.
--- @param snapTo number @What to snap the input number to.
--- @return number @The clamped value.
function math.SnapTo(input, snapTo)
end

---  menu|client|server
--- Returns the fraction of where the current time is relative to the start and end times  
--- @param start number @Start time in seconds
--- @param end_ number @End time in seconds
--- @param current number @Current time in seconds
--- @return number @Fraction
function math.TimeFraction(start, end_, current)
end

---  menu|client|server
--- Trim unwanted decimal places.  
--- @param num number @The number to truncate
--- @param digits? number @The amount of digits to keep after the point.
--- @return number @The result.
function math.Truncate(num, digits)
end

---  menu|client|server
--- Calculates the absolute value of a number (effectively removes any negative sign).  
--- @param x number @The number to get the absolute value of.
--- @return number @The absolute value.
function math.abs(x)
end

---  menu|client|server
--- Returns the [arccosine](https://en.wikipedia.org/wiki/Arccosine) of the given number.  
--- @param cos number @Cosine value in range of -1 to 1.
--- @return number @An angle in radians, between 0 and pi, which has the given cos value
function math.acos(cos)
end

---  menu|client|server
--- Returns the [arcsine](https://en.wikipedia.org/wiki/Inverse_trigonometric_functions) of the given number.  
--- @param normal number @Sine value in the range of -1 to 1.
--- @return number @An angle in radians, in the range -pi/2 to pi/2, which has the given sine value
function math.asin(normal)
end

---  menu|client|server
--- Returns the [arctangent](https://en.wikipedia.org/wiki/Inverse_trigonometric_functions) of the given number.  
--- @param normal number @Tangent value.
--- @return number @An angle in radians, in the range -pi/2 to pi/2, which has the given tangent.
function math.atan(normal)
end

---  menu|client|server
--- functions like math.atan(y / x), except it also takes into account the quadrant of the angle and so doesn't have a limited range of output.  
--- ℹ **NOTE**: The Y argument comes first!  
--- @param y number @Y coordinate.
--- @param x number @X coordinate.
--- @return number @The angle of the line from (0, 0) to (x, y) in radians, in the left-open interval (-pi, pi]
function math.atan2(y, x)
end

---  menu|client|server
--- Ceils or rounds a number up.  
--- @param number number @The number to be rounded up.
--- @return number @ceiled numbers
function math.ceil(number)
end

---  menu|client|server
--- Returns the [cosine](https://en.wikipedia.org/wiki/Trigonometric_functions#cos) of given angle.  
--- @param number number @Angle in radians
--- @return number @Cosine of given angle
function math.cos(number)
end

---  menu|client|server
--- Returns the [hyperbolic cosine](https://en.wikipedia.org/wiki/Cosh_(mathematical_function)) of the given angle.  
--- @param number number @Angle in radians.
--- @return number @The hyperbolic cosine of the given angle.
function math.cosh(number)
end

---  menu|client|server
--- Converts radians to degrees.  
--- @param radians number @Value to be converted to degrees.
--- @return number @degrees
function math.deg(radians)
end

---  menu|client|server
--- Returns the x power of the Euler constant.  
--- @param exponent number @The exponent for the function.
--- @return number @e to the specified power
function math.exp(exponent)
end

---  menu|client|server
--- Floors or rounds a number down.  
--- @param number number @The number to be rounded down.
--- @return number @floored numbers
function math.floor(number)
end

---  menu|client|server
--- Returns the modulus of the specified values.  
--- While this is similar to the % operator, **it will return a negative value if the first argument is negative**, whereas the % operator will return a `positive` value **even if the first operand is negative**.  
--- @param base number @The base value.
--- @param modulator number @The modulator.
--- @return number @The calculated modulus.
function math.fmod(base, modulator)
end

---  menu|client|server
--- **Lua reference description**: Returns `m` and `e` such that `x = m2e`, `e` is an integer and the absolute value of `m` is in the range ((0.5, 1) (or zero when x is zero).  
--- Used to split the number value into a normalized fraction and an exponent. Two values are returned: the first is a multiplier in the range `1/2` (**inclusive**) to `1` (**exclusive**) and the second is an integer exponent.  
--- The result is such that `x = m*2^e`.  
--- @param x number @The value to get the normalized fraction and the exponent from.
--- @return number @m, multiplier - between `0.5` and `1`.
--- @return number @e, exponent - **always** an integer.
function math.frexp(x)
end

---  menu|client|server
--- A variable that effectively represents infinity, in the sense that in any numerical comparison every number will be less than this.  
--- For example, if `x` is a number, `x > math.huge` will **NEVER** be `true` except in the case of overflow (see below).  
--- Lua will consider any number greater than or equal to `2^1024` (the exponent limit of a [double](http://en.wikipedia.org/wiki/Double-precision_floating-point_format)) as `inf` and hence equal to this.  
--- @return number @The effective infinity.
function math.huge()
end

---  menu|client|server
--- Takes a normalised number and returns the floating point representation.  
--- @param normalizedFraction number @The value to get the normalized fraction and the exponent from.
--- @param exponent number @The value to get the normalized fraction and the exponent from.
--- @return number @result
function math.ldexp(normalizedFraction, exponent)
end

---  menu|client|server
--- With one argument, return the natural logarithm of x (to base e).  
--- With two arguments, return the logarithm of x to the given base, calculated as log(x)/log(base).  
--- @param x number @The value to get the base from exponent from.
--- @param base? number @The logarithmic base.
--- @return number @Logarithm of x to the given base
function math.log(x, base)
end

---  menu|client|server
--- Returns the base-10 logarithm of x. This is usually more accurate than math.log(x, 10).  
--- @param x number @The value to get the base from exponent from.
--- @return number @The result.
function math.log10(x)
end

---  menu|client|server
--- Returns the largest value of all arguments.  
--- @param ... any ... @Numbers to get the largest from
--- @return number @The largest number
function math.max(...)
end

---  menu|client|server
--- Returns the smallest value of all arguments.  
--- @param ... any ... @Numbers to get the smallest from.
--- @return number @The smallest number
function math.min(...)
end

---  menu|client|server
--- 🛑 **DEPRECATED**: This is removed in Lua versions later than what GMod is currently using. You should use the % operator or math.fmod instead.  
--- Returns the modulus of the specified values. Same as math.fmod.  
--- @param base number @The base value
--- @param modulator number @Modulator
--- @deprecated
--- @return number @The calculated modulus
function math.mod(base, modulator)
end

---  menu|client|server
--- Returns the integral and fractional component of the modulo operation.  
--- @param base number @The base value.
--- @return number @The integral component.
--- @return number @The fractional component.
function math.modf(base)
end

---  menu|client|server
--- A variable containing the mathematical constant pi. (`3.1415926535898`)  
--- See also: Trigonometry  
--- ℹ **NOTE**: It should be noted that due to the nature of floating point numbers, results of calculations with `math.pi` may not be what you expect. See second example below.  
--- @return number @The mathematical constant, Pi.
function math.pi()
end

---  menu|client|server
--- Returns x raised to the power y.  
--- In particular, math.pow(1.0, x) and math.pow(x, 0.0) always return 1.0, even when x is a zero or a nan. If both x and y are finite, x is negative, and y is not an integer then math.pow(x, y) is undefined.  
--- @param x number @Base.
--- @param y number @Exponent.
--- @return number @y power of x
function math.pow(x, y)
end

---  menu|client|server
--- Converts an angle in degrees to it's equivalent in radians.  
--- @param degrees number @The angle measured in degrees.
--- @return number @radians
function math.rad(degrees)
end

---  menu|client|server
--- When called without arguments, returns a uniform pseudo-random real number in the range 0 to 1 which includes 0 but excludes 1.  
--- When called with an integer number m, returns a uniform pseudo-random integer in the range 1 to m inclusive.  
--- When called with two integer numbers m and n, returns a uniform pseudo-random integer in the range m to n inclusive.  
--- See also math.Rand  
--- @param m? number @If m is the only parameter: upper limit
--- @param n? number @Upper limit
--- @return number @Random value
function math.random(m, n)
end

---  menu|client|server
--- Seeds the random number generator. The same seed will guarantee the same sequence of numbers each time with math.random.  
--- For shared random values across predicted realms, use util.SharedRandom.  
--- ⚠ **WARNING**: Incorrect usage of this function will affect `all` random numbers in the game.  
--- @param seed number @The new seed
function math.randomseed(seed)
end

---  menu|client|server
--- Returns the [sine](https://en.wikipedia.org/wiki/Trigonometric_functions) of given angle.  
--- @param number number @Angle in radians
--- @return number @Sine for given angle
function math.sin(number)
end

---  menu|client|server
--- Returns the [hyperbolic sine](https://en.wikipedia.org/wiki/Hyperbolic_functions) of the given angle.  
--- @param number number @Angle in radians.
--- @return number @The hyperbolic sine of the given angle.
function math.sinh(number)
end

---  menu|client|server
--- Returns the square root of the number.  
--- @param value number @Value to get the square root of.
--- @return number @squareRoot
function math.sqrt(value)
end

---  menu|client|server
--- Returns the tangent of the given angle.  
--- @param value number @Angle in radians
--- @return number @The tangent of the given angle.
function math.tan(value)
end

---  menu|client|server
--- Returns the [hyperbolic tangent](https://en.wikipedia.org/wiki/Hyperbolic_functions) of the given number.  
--- @param number number @Angle in radians.
--- @return number @The hyperbolic tangent of the given angle.
function math.tanh(number)
end

