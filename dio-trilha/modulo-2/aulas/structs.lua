local bananaStruct = {
    Name = 'Banana',
    Color = 'Amarelo',
    Price = 2.49,
    Sweetness = 4,
    Emoji = '🍌'
}

local appleStruct = {
    Name = 'Maçã',
    Color = 'Vermelho',
    Price = 3.79,
    Sweetness = 3,
    Emoji = '🍎'
}

local fruits = {
    bananaStruct,
    appleStruct
}

for i = 1, #fruits, 1 do
    local fruitStruct = fruits[i]
    print(fruitStruct)
    -- print(fruitStruct.Name)
    -- print(fruitStruct.Color)
    -- print(fruitStruct.Price)
    -- print(fruitStruct.Sweetness)
    -- print(fruitStruct.Emoji)
end

for i = 1, #fruits, 1 do
    local fruitStruct = fruits[i]

    print("----------------")
    print(string.format("%s %s", fruitStruct.Name, fruitStruct.Emoji))
    print(string.format("Valor: %s", fruitStruct.Price))
    print(string.format("Doçura: %d", fruitStruct.Sweetness))
    print(string.format("Cor: %s", fruitStruct.Color))
end