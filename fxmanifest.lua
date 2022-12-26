fx_version 'cerulean'
game 'gta5'

author 'Vortex'
description 'ESX Airplane Job'
version 'legacy'

client_scripts{
    '@es_extended/locale.lua',
    'locales/*.lua',
    'config.lua',
    'client/client.lua'
}

server_scripts{
    '@es_extended/locale.lua',
    'locales/*.lua',
    'config.lua',
    'server/server.lua'
}

dependencies {
	'es_extended',
}