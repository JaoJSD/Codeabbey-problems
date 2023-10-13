count = io.read()
count1 = tonumber(count)
first = 1
list1 = {}

function arrayNum(number, countTotal, list)    
    if number <= countTotal then do
        eChain = io.read()        
        list[number] = getChainNum(eChain)
        print(list[number])
        arrayNum(number + 1, countTotal, list)
        end
    end
end

function getChainNum(chain)    
  local const_a, const_b, const_c = chain:match("([%-?%d]+)%s+([%-?%d]+)%s+([%-?%d]+)")
    const_a = tonumber(const_a)
    const_b = tonumber(const_b)
    const_c = tonumber(const_c)
    result = setMinOfThree(const_a, const_b, const_c)
return result
end

function setMinOfThree(num1, num2, num3)
  local minOfThree = math.min(num1, num2, num3)
return minOfThree
end

arrayNum(first, count1, list1)
