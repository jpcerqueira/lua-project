local names = {'Jo', 'o', 'ã', 'o'}
local name  =  'João' -- acento é considerado um espaço ocupado na tabela
local namesLength = #names --length
local nameLength = #name

print(names[1])
print(namesLength)
print(nameLength)
print(#names[1])

local numbers = {58, 64, 6987, 36, 11}

for key, value in pairs(numbers) do  -- é o enumarade do py
    print(key, value)
end