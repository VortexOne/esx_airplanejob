--------------------------------------------------
--------- SCRIPT MADE BY \~𝓥𝓞𝓡𝓣𝓔𝓧#0819 ---------
------- Feel free to message me on Discord -------
--- P.S.: Sorry for not including an en-locale ---
------------------- HAVE FUN!! -------------------
--------------------------------------------------
--[[
_____ __  __ _____   ____  _____ _______       _   _ _______ 
|_   _|  \/  |  __ \ / __ \|  __ \__   __|/\   | \ | |__   __|
  | | | \  / | |__) | |  | | |__) | | |  /  \  |  \| |  | |   
  | | | |\/| |  ___/| |  | |  _  /  | | / /\ \ | . ` |  | |   
 _| |_| |  | | |    | |__| | | \ \  | |/ ____ \| |\  |  | |   
|_____|_|  |_|_|     \____/|_|  \_\ |_/_/    \_\_| \_|  |_|   

DEPENDENCIES:
https://github.com/aymannajim/an_progBar
https://okok.tebex.io/package/4724993
If you don't have money for okokNotify just replace the exports in the client and server with your notify i.e. MythicNotify
]]--

Config = {}
Config.Locale = 'de'

Config.useEsxLegacy = true -- Are you running ESX Legacy on your server? If yes, leave on true, if not or you are not sure, turn to false.
-- If you have it on false and get a warning similar to this when starting the script: [WARNING] esx_airplanejob used esx:getSharedObject, this method is deprecated and should not be used, On 30/11/2022 esx:getSharedObject will come to EOL and be fully removed!
-- Then set it to true.

-- Blip settings
Config.showBlip = true
Config.blipName = 'Flugzeug Job'
-- Plane vehicle that spawns
Config.vehicle = "VESTRA"
-- Where to go to start the job?
Config.StartPos = vector3(-1622.0732, -3152.5601, 13.9919)
Config.HangarCoords = vector3(-1656.0994, -3149.6526, 13.9920) -- If you are not sure what this does, set it to the same coords as StartPos when changing the StartPos to your liking
Config.HangarRadius = 30.0 -- don't touch this if you are not sure what it does
-- Where should the plane spawn?
Config.Spawn = vector3(-1624.9937, -3099.1274, 13.9447)
Config.SpawnHeading = 330.0396
-- Where should the player fly to to load up goods?
Config.Destination = vector3(4480.7700, -4459.3516, 4.2477)
Config.Destination2 = vector3(1731.5535, 3309.9954, 41.2235)
Config.Destination3 = vector3(2133.8940, 4785.1396, 40.9703)
Config.DestBlipName = 'Ziel'
-- Where the player should deliver the loaded goods.
Config.DeliverDestination = vector3(-1548.1018, -3186.1128, 13.9449)
-- Time to load and unload the goods in seconds
Config.LoadTime = 5
Config.UnloadTime = 5
-- How much should the Job pay?
Config.Payment1 = 1000
Config.Payment2 = 1500
Config.Payment3 = 2000
-- How much should the player pay if the Vehicle gets destroyed during the job? Set to 0 to disable.
Config.fineAmount = 2000