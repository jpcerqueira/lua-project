--[[
    Função sem parâmetro e sem retorno
    Função com parâmetro e com retorno
    Função sem parâmetro e com retorno
    Função com parâmetro e sem retorno
]]

local function sayHello()
    print('Olá usuário, seja bem vindo!')    
end

sayHello()

local function convertKilometersToMiles(km)
    return math.floor(km / 1.609) -- arredonda o float para baixo
end

local km = 50
local mph = convertKilometersToMiles(km)

print('O vento está com uma velocidade de '.. mph .. ' MPH')

local function getDate()
    return os.date()
end

print('A data e horas de hoje são: ' .. getDate())

local function convertMany(km1, km2, km3)
    local m1 = convertKilometersToMiles(km1)
    local m2 = convertKilometersToMiles(km2)
    local m3 = convertKilometersToMiles(km3)
    return m1, m2, m3
end

print('Conversões: ', convertMany(60 ,80, 120))
print('Conversões: '.. convertMany(60 ,80, 120))

--parametro opcional

local function sayHello2(name)
    if name == nil then
        name = 'desconhecido'
    end
    print('Olá ' ..name..', seja bem vindo!')
end

sayHello2('JP')

local function sayHello3(name)
    name = name or 'desconhecido'
    print('Olá ' ..name..', seja bem vindo!')
end

sayHello3()