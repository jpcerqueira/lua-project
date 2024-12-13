local utils = {}

-- local function helloFromUtils()
--     print('Hello from Utils')
-- end

function utils.helloFromUtils() -- criamos uma chave como o nome de 'helloFromUtils', onde seu valor é a função, colocando no dicionario utils
    print('Hello from Utils')
end

utils['byeFromUtils'] = function () -- criamos uma chave como o nome de 'byeFromUtils', onde seu valor é a função, colocando no dicionario utils
    print('Bye from Utils')
end

utils.helloFromUtils()
utils.byeFromUtils()

for _, value in pairs(utils) do
    print(value)
end

return utils