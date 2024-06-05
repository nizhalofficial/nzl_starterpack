RegisterNetEvent('nzl_starterpack:notify')
AddEventHandler('nzl_starterpack:notify', function(message)
    if Config.NotificationSystem == 'qb-core' then
        QBCore.Functions.Notify(message)
    elseif Config.NotificationSystem == 'esx' then
        ESX.ShowNotification(message)
    end
end)

Citizen.CreateThread(function()
    local pedModel = GetHashKey(Config.NPC.model)

    RequestModel(pedModel)
    while not HasModelLoaded(pedModel) do
        Citizen.Wait(100)
    end

    local npc = CreatePed(4, pedModel, Config.NPC.coords.x, Config.NPC.coords.y, Config.NPC.coords.z, Config.NPC.heading, false, true)
    SetEntityInvincible(npc, true)
    FreezeEntityPosition(npc, true)
    TaskStartScenarioInPlace(npc, Config.NPC.animation, 0, true)

    if Config.StarterVehicle.teleport then
        local vehicleModel = GetHashKey(Config.StarterVehicle.model)

        RequestModel(vehicleModel)
        while not HasModelLoaded(vehicleModel) do
            Citizen.Wait(100)
        end

        local vehicle = CreateVehicle(vehicleModel, Config.StarterVehicle.spawnCoords.x, Config.StarterVehicle.spawnCoords.y, Config.StarterVehicle.spawnCoords.z, Config.StarterVehicle.spawnHeading, true, false)
        SetVehicleFuelLevel(vehicle, Config.StarterVehicle.fuel)
    end
end)
