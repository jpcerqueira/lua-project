local monsterName = 'Adder'
local monsterBehavior = 'Agressivo'
local monsterResources = 'Fresh Adder Hide, Adder Fang'
local monsterAttack = 1
local monsterArmor = 0
local mosterHitPoint = 3
local mosterFleeingHitPoints = 1

local function getProgressBar(attribute)
    local result = ''
    local fullChar = '⬜ '
    local emptyChar = '⬛ '
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end

    return result
end

print('========================================================')
print('| Nome:             ' .. monsterName .. '                              |')
print('| Comportamento:    ' .. monsterBehavior .. '                          |')
print('| Recursos:         ' .. monsterResources .. '       |')
print('|                                                      |')
print('| Atributos                                            |')
print('|    Ataque:         ' .. getProgressBar(monsterAttack) .. '    |')
print('|    Armadura:       ' .. getProgressBar(monsterArmor) .. '    |')
print('|    Pontos de Vida: ' .. getProgressBar(mosterHitPoint) .. '    |')
print('|    Pontos de Fuga: ' .. getProgressBar(mosterFleeingHitPoints) .. '    |')
print('========================================================')