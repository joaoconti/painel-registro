local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

cg = {}
Tunnel.bindInterface("registro", cg)

vRP.prepare("registro/checar_todos_registros", "SELECT user_id FROM leads")

local cache = {}

CreateThread(function() -- Sistema de cache, pegando todos os players já registrados
    local result = vRP.query('registro/checar_todos_registros')
    for i=1, #result do
        table.insert(cache, result[i].user_id)
    end
end)

function cg.verificarRegistro() -- Função para verificar se o player já está registrado
    local source = source
    local userId = vRP.getUserId(source)
    for i=1, #cache do
        if userId == cache[i] then
            return true
        end
        return false
    end
end