_G.bit = {}
---  menu|client|server
--- Performs the bitwise `and` for all values specified.  
--- @param value number @The value to be manipulated.
--- @param otherValues? number @Values bit to perform bitwise "and" with
--- @return number @Result of bitwise "and" operation.
function bit.band(value, otherValues)
end

---  menu|client|server
--- Returns the bitwise not of the value.  
--- @param value number @The value to be inverted.
--- @return number @bitwiseNot
function bit.bnot(value)
end

---  menu|client|server
--- Returns the right shifted value.  
--- ℹ **NOTE**: The returned value will be clamped to a signed 32-bit integer, even on 64-bit builds.  
--- @param value number @The value to be manipulated.
--- @param shiftCount number @Amounts of bits to shift right by.
--- @return number @shiftedValue
function bit.rshift(value, shiftCount)
end

