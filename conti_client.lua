local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

cg = Tunnel.getInterface("registro")

RegisterCommand(Config.comando, function (args, rawCommand) -- Criar um comando
    abrirPiainel()
end)

function abrirPiainel() -- Função para abrir o painel
    if not cg.verificarRegistro() then -- Função para verificar se o player já foi registrado
        SetNuiFocus(true, true) -- Liberar o mouse para mover
        SendNUIMessage({ -- Enviando informações para o javascript
            action = 'show',
            plataformas = Config.plataformas,
            descricao = Config.descricao,
            imagem = Config.imagem
        })
    end
end

RegisterNUICallback('focusFalse', function()
    SetNuiFocus(false, false) -- Liberar o mouse para mover
end)