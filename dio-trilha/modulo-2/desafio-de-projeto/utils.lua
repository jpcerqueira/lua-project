local utils = {}

---
---Essa função habilita o modo UTF-8 no terminal.
---
function utils.enableUtf8()
    os.execute('chcp 65001')
end

---Calcula uma barra de progresso ASCII baseada em um atributo.
---@param attribute number Número de 0 a 10.
---@return string
---
function utils.getProgressBar(attribute)
    local fullChar = '▰'
    local emptyChar = '▱'

    local result = ''
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

---Calcula uma barra de progresso ASCII baseada em um atributo.
---@param attribute number Número de 0 a 3.
---@return string
---
function utils.getProgressBarItens(attribute)
    local fullChar = '▰'
    local emptyChar = '▱'

    local result = ''
    for i = 1, 3, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

---
---Faz o print das informações de uma criatura.
---@param creature table
---
function utils.printCreature(creature)
    -- Calculate health rate
    local healthRate = math.floor((creature.health / creature.maxHealth) * 10)

    -- Cartão
    print('| ' .. creature.name)
    print('| ')
    --print('| ' .. creature.description)
    --print('| ')
    print('| Atributos')
    print('|    Vida:         ' .. utils.getProgressBar(healthRate))
    print('|    Ataque:       ' .. utils.getProgressBar(creature.attack))
    print('|    Defesa:       ' .. utils.getProgressBar(creature.defense))
    print('|    Velocidade:   ' .. utils.getProgressBar(creature.speed))
end

---Pergunta ao usuário por um número, que é retornado pela função.
---@return any
function utils.ask()
    io.write('> ')
    local answer = io.read('*n')
    return answer
end

---Pergunta ao usuário por um número, que é retornado pela função.
---@return string

function utils.chooseYourOpponent(monster)
    print('Escolha o número do monstro para derrotar!\n')
    for _, value in pairs(monster) do
        print(value.monsterNumber ..' - '.. value.name)
    end
    local number = io.read('*n')
    local choose = (number == 2 and 'bat') or (number == 151 and 'colossus') or (number == 1 and 'rat') or (number == 3 and 'wolf') or nil

    return choose

end

return utils