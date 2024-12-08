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

local function openMainMenu()
    print('x===== BIBLIOTECA DE MONSTROS =====>')
    print('')
    print(' 1 - Acessar biblioteca')
    print(' 0 - Sair')
    print('')
    print('x==================================>')
    print('')
end

local listaDeMonstros = {
    {'Adder', 'Agressivo', 1, 0, 2, 1},
    {'Aurochs', 'Passivo', 4, 2, 6, 2},
    {'Badger', 'Agressivo', 2, 0, 4, 1},
    {'Bat', 'Agressivo', 1, 0, 3, 1},
    {'Bear', 'Agressivo', 7, 5, 8, 0}
}

local function openSecondMenu()
    print('x==================== MONSTROS ====================>')
    print('')
    print(' 1 - '..listaDeMonstros[1][1]..'')
    print(' 2 - '..listaDeMonstros[2][1]..'')
    print(' 3 - '..listaDeMonstros[3][1]..'')
    print(' 4 - '..listaDeMonstros[4][1]..'')
    print(' 5 - '..listaDeMonstros[5][1]..'')
    print('')
    print(' 0 - Retornar ao menu anterior')
    print('')
    print('x==================================================>')
    print('')
end

local function openMonsterCard(monster)
    print('x======================= MONSTRO =======================>')
    print('')
    print('     Nome:             ' .. listaDeMonstros[monster][1])
    print('     Comportamento:    ' .. listaDeMonstros[monster][2])
    print('')
    print('     Atributos')
    print('         Ataque:         ' .. getProgressBar(listaDeMonstros[monster][3]))
    print('         Armadura:       ' .. getProgressBar(listaDeMonstros[monster][4]))
    print('         Pontos de Vida: ' .. getProgressBar(listaDeMonstros[monster][5]))
    print('         Pontos de Fuga: ' .. getProgressBar(listaDeMonstros[monster][6]))
    print('')
    print('x========================================================>')
    print('')
    print(' Digite <ENTER> para retornar ao menu anterior')
    print('')
end

while true do
    os.execute("cls")
    openMainMenu()
    print('Digite o número para navegar no menu: ')
    local mainMenuNumber = tonumber(io.read())
    if mainMenuNumber == 1 then
        while true do
            os.execute("cls")
            openSecondMenu()
            print("Digite o número do monstro:")
            local secondMenuNumber = tonumber(io.read()) -- tem um bug, que depois irei concertar, que ocorre quando o usuário digita um número inválido
                if secondMenuNumber == 0 then
                    break
                else
                    os.execute("cls")
                    openMonsterCard(secondMenuNumber)
                    local returnMenu = tonumber(io.read())
                end
        end

    elseif mainMenuNumber == 0 then
        os.execute("cls")
        break
    end
end