count = io.read()
for i = 1, count do    
  vals = io.read()
  local num1, num2, num3 = vals:match("([%-?%d]+)%s+([%-?%d]+)%s+([%-?%d]+)")
  num1 = tonumber(num1)
  num2 = tonumber(num2)
  num3 = tonumber(num3)
  local minOfThree = math.min(num1, num2, num3)
  print(minOfThree)  
end
