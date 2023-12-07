_G.math = {}
---  menu|client|server
--- Basic code for Bezier-Spline algorithm.  
--- @param tDiff number @From 0 to 1, where alongside the spline the point will be.
--- @param tPoints table @A table of Vectors
--- @param tMax number @Just leave this at 1.
--- @return Vector @Point on Bezier curve, related to tDiff.
function math.BSplinePoint(tDiff, tPoints, tMax)
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
--- Eases in like a bouncy ball.  
--- ℹ **NOTE**: This doesn't work properly when used with Global.Lerp as it clamps the fraction between 0 and 1. Using your own version of Global.Lerp that is unclamped would be necessary instead.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value
function math.ease.InBounce(fraction)
end

---  menu|client|server
--- Eases in by cubing the fraction.  
--- @param fraction number @Fraction of the progress to ease, from 0 to 1
--- @return number @"Eased" Value, from 0 to 1
function math.ease.InCubic(fraction)
end

---  menu|client|server
--- Normalizes angle, so it returns value between -180 and 180.  
--- @param angle number @The angle to normalize, in degrees.
--- @return number @The normalized angle, in the range of -180 to 180 degrees.
function math.NormalizeAngle(angle)
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
--- functions like math.atan(y / x), except it also takes into account the quadrant of the angle and so doesn't have a limited range of output.  
--- ℹ **NOTE**: The Y argument comes first!  
--- @param y number @Y coordinate.
--- @param x number @X coordinate.
--- @return number @The angle of the line from (0, 0) to (x, y) in radians, in the left-open interval (-pi, pi]
function math.atan2(y, x)
end

---  menu|client|server
--- Returns the x power of the Euler constant.  
--- @param exponent number @The exponent for the function.
--- @return number @e to the specified power
function math.exp(exponent)
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
--- 🛑 **DEPRECATED**: This is removed in Lua versions later than what GMod is currently using. You should use the % operator or math.fmod instead.  
--- Returns the modulus of the specified values. Same as math.fmod.  
--- @param base number @The base value
--- @param modulator number @Modulator
--- @deprecated
--- @return number @The calculated modulus
function math.mod(base, modulator)
end

