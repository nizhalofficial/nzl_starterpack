local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('nzl_starterpack:giveStarterPack')
AddEventHandler('nzl_starterpack:giveStarterPack', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player then
        for _, item in ipairs(Config.StarterPackItems) do
            Player.Functions.AddItem(item.name, item.amount)
        end

        -- Log to Discord
        PerformHttpRequest(Config.DiscordWebhook, function(err, text, headers) end, 'POST', json.encode({
            username = 'Starter Pack Logger',
            content = '**'..GetPlayerName(src)..'** received their starter pack.'
        }), { ['Content-Type'] = 'application/json' })

        TriggerClientEvent('nzl_starterpack:notify', src, 'You have received your starter pack!')
    end
end)

if Config.EnableCommand then
    QBCore.Commands.Add('starterpack', 'Receive your starter pack', {}, false, function(source, args)
        TriggerEvent('nzl_starterpack:giveStarterPack', source)
    end)
end
