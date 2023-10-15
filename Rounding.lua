count = io.read()
count1 = tonumber(count)
first = 1
list1 = {}

function arrayNum(number, countTotal, list)
  if number <= countTotal then do
    eChain = io.read()        
      table.insert(list, number, getChainNum(eChain))
      arrayNum(number + 1, countTotal, list)      
      end
  end
  return list
end

function getChainNum(chain)
  local const_a, const_b = chain:match("([%-?%d]+)%s+([%-?%d]+)")
    const_a = tonumber(const_a)
    const_b = tonumber(const_b)
    divNum = const_a / const_b
    modNum = math.modf(divNum)
    setNum = rndNum(divNum, modNum)
return setNum
end

function rndNum(num1, num2)
  if num1 < 0 and (num1 - num2) <= -0.5 then
    rondNum = math.floor(num1)
  elseif num1 < 0 and (num1 - num2) > -0.5 then
    rondNum  = math.ceil(num1)
  elseif num1 > 0 and (num1 - num2) < 0.5 then
    rondNum = math.floor(num1)
  else
    rondNum = math.ceil(num1)
  end
return rondNum
end

list1 = arrayNum(first, count1, list1)
print(table.concat(list1, ' '))
