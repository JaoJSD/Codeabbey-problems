count = io.read()
for i = 1, count do    
  vals = io.read()
  local num1, num2 = vals:match("([%-?%d]+)%s+([%-?%d]+)")
  num1 = tonumber(num1)
  num2 = tonumber(num2)
  local sum = num1 + num2
  print(sum)  
end
