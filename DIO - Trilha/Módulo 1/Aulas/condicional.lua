local maxHealth = 20
local health = 10
local isHealthFull = health == maxHealth
local healthPorcentage = health / maxHealth
local isHealthCritical = healthPorcentage <= 0.25

print(isHealthFull)
print(healthPorcentage*100,'%')
print(isHealthCritical)

if isHealthCritical then
    print('Vida baixa!')
else
    print('Tudo ok!')
end

if healthPorcentage <= 0.25 then
    print('Vida critica! Se cure!')
elseif healthPorcentage > 0.25 and healthPorcentage < 0.50 then
    print('Vida baixa! Se cure!')
else
    print('Tudo ok!')
end