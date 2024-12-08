local health = 5
local maxHealth = 20

print('Seu life:', health)
print()

-- while health ~= maxHealth do --enquanto 'condição' faça (sempre checa antes de fazer)
--     print('Voce curou 1 de life!')
--     print()
--     health = health + 1
--     print('Seu life:', health)
-- end

--[[
repeat  --repita (usa pelo menos uma vez)
    print('Voce curou 1 de life!')
    print()
    health = health + 1
    print('Seu life:', health)
until health == maxHealth  --até 'condição'
]]

for i = health, 0, -1 do -- para inicio, limite, incremento, faça
    for y = 3, 0, -1 do -- para inicio, limite, incremento, faça
        print(i, y)
    end
end

for i = 3, 0, -1 do -- para inicio, limite, incremento, faça
    print(i)
end

print()
print('Seu life esta cheio!', health)

