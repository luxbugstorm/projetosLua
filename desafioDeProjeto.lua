--[[
Nome da Criatura
Descrição da criatura, incluindo suas características, habilidades e comportamento.
Som associado à criatura.
Atributos
    Ataque
    Defesa
    Velocidade
    Vida
    Inteligência    
Habilidades
    Furtividade 
    Explosão
===================================================
/
/ CREEPER 
/ Um monstro verde que explode quando se aproxima do jogador.
/
/ Som: Tssssss
/
/ Atributos:
/   Ataque: 20
/   Defesa: 5
/   Velocidade: 10
/   Vida: 30
/
===================================================
]]


os.execute ("chcp 65001")
os.execute ("cls")


--Criatura
local monsterName = "Warden"
local monsterDescription =  "O Warden é uma criatura hostil, cega e biologicamente adaptada ao bioma Deep Dark (Escuridão Profunda)."
local monsterLook = "Tem uma estrutura humanoide massiva, com texturas que lembram a pedra Sculk (o material do bioma)."
local monsterSound = "Emite um som de batida de coração, que aumenta de intensidade à medida que o jogador se aproxima."
local monsterSpawn = [[Ele emerge lentamente do chão quando um jogador ativa os Sensores de Sculk que enviam sinais para um 
|Sculk Shrieker (Invocador de Sculk) pela quarta vez. Se o Warden não detectar nenhuma vibração ou cheiro 
|por 60 segundos, ele se acalma e cava de volta para a terra, desaparecendo.]]
local monsterFind = "Pode ser encontrado no bioma Deep Dark e nas Ancient Cities."
local monsterSkills = {
    deteccao = "Detecção de Vibração",
    audicao = "Audição Aguçada",
    olfato = "Olfato",
    grito = "Grito Sônico (Sonic Boom)",
    escuridao ="Efeito de Escuridão"
}
local emoji = "🫀"

--Atributos
local lifeAttribute = 25
local attackAttribute = 10
local defenseAttribute = 15
local speedAttribute = 5
local intelligenceAttribute = 5

--Função que recebe os atributos e nos retorna uma barra de progresso em String
local function getProgressBar(attributes)
    local fullBar = "⬜"
    local emptyBar = "⬛"
    local fullLife = "❤️ "
    local emptyLife = "🖤"

    local result1 =""
        for i = 1, 30, 1 do
            if i <= lifeAttribute then
                result1 = result1 .. fullLife
            else
                result1 = result1 .. emptyLife
            end
        end
    local result2 = ""
    for i = 1, 30, 1 do
        if i <= attributes then
            result2 = result2 .. fullBar
        else
            result2 = result2 .. emptyBar
        end
    end

    if attributes == lifeAttribute then
        return result1
    else
        return result2
    end
end

local function centerString(text, totalWidth)
    local textLength = string.len(text)
    
    -- Se a palavra já for maior ou igual ao espaço total, apenas retorna a palavra
    if textLength >= totalWidth then
        return text
    end
    
    -- Calcula quantos espaços em branco precisamos no total
    local emptySpaces = totalWidth - textLength
    
     -- Divide os espaços para os dois lados (math.floor arredonda para baixo em caso de número ímpar)
    local leftSpaces = math.floor(emptySpaces / 2)
    local rightSpaces = math.ceil(emptySpaces / 2)
    
    -- string.rep repete o caractere de espaço " " a quantidade de vezes que calculamos
    local leftPadding = string.rep(" ", leftSpaces)
    local rightPadding = string.rep(" ", rightSpaces)
    
     -- Junta tudo: Espaços + Texto + Espaços
    return leftPadding .. text .. rightPadding
end

--Cartão de Informações
print("====================================================================================================")
print("|")
print("|" .. centerString(monsterName, 100))
print("|")
print("| " .. monsterDescription)
print("|")
print("| " .. monsterLook)
print("|")
print("| " .. monsterFind)
print("|")
print("| " .. monsterSpawn)
print("|")
print("| " .. monsterSound)
print("|")
print("| Emoji Favorito: " .. emoji)
print("|-----------------------------")
print("|" .. centerString("Atributos", 30))
print("|-----------------------------")
print("|    Vida        " .. getProgressBar(lifeAttribute))
print("|    Ataque      " .. getProgressBar(attackAttribute))
print("|    Defesa      " .. getProgressBar(defenseAttribute))
print("|    Velocidade  " .. getProgressBar(speedAttribute))
print("|    Inteligência" .. getProgressBar(intelligenceAttribute))
print("|-----------------------------")
print("|")
print("|-----------------------------")
print("|" .. centerString("Habilidades", 30))
print("|-----------------------------")
print("| " .. monsterSkills["deteccao"])
print("| " .. monsterSkills["audicao"])
print("| " .. monsterSkills["olfato"])
print("| " .. monsterSkills["grito"])
print("| " .. monsterSkills["escuridao"])
print("|-----------------------------")
print("|")
print("====================================================================================================")
