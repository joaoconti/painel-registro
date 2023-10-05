fx_version 'bodacious'
game 'gta5'
lua54 'yes'

author 'joaoconti_'
description 'Painel de registro'
version '1.0'

client_scripts {
    '@vrp/lib/utils.lua',
    'config/geral.lua',
    'conti_client.lua',
}

server_scripts {
    '@vrp/lib/utils.lua',
    'config/geral.lua',
    'config/recompensa.lua',
    'conti_server.lua',
}

ui_page './nui/assets/index.html'

files {
    './nui/assets/index.html',
    './nui/assets/css/*',
    './nui/assets/img/*',
    './nui/assets/js/*',
}