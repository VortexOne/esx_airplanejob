ESX = nil
if Config.useEsxLegacy then
    ESX = exports["es_extended"]:getSharedObject()
else
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
end

msg = _U('deliveredBannerText')

RegisterNetEvent('airplaneJob:jobFinished')
AddEventHandler('airplaneJob:jobFinished', function(salary)
local src = source
local xPlayer = ESX.GetPlayerFromId(src)
local payment = salary
xPlayer.addMoney(payment)
TriggerClientEvent('airplaneJob:banner', xPlayer.source, msg)
end)

RegisterNetEvent('airplaneJob:jobFailed')
AddEventHandler('airplaneJob:jobFailed', function()
local src = source
local xPlayer = ESX.GetPlayerFromId(src)
local playerCash = xPlayer.getMoney()
local playerBank = xPlayer.getAccount('bank')
if playerCash < Config.fineAmount then
    if playerBank.money < Config.fineAmount then
        xPlayer.removeAccountMoney('bank', playerBank.money)
        TriggerClientEvent('okokNotify:Alert', xPlayer.source, _U('jobNotifyTitle'), _U('vehicleDestroyedPayBankRest', playerBank.money), 10000, 'error')
    else
        xPlayer.removeAccountMoney('bank', Config.fineAmount)
        TriggerClientEvent('okokNotify:Alert', xPlayer.source, _U('jobNotifyTitle'), _U('vehicleDestroyedPayBank', Config.fineAmount), 10000, 'error')
    end
else
    xPlayer.removeMoney(Config.fineAmount)
    TriggerClientEvent('okokNotify:Alert', xPlayer.source, _U('jobNotifyTitle'), _U('vehicleDestroyedPayCash', Config.fineAmount), 10000, 'error')
end
end)