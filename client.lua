local spawned = false
local sleeper = 1000

AddEventHandler('playerSpawned', function(spawn)
    Citizen.Wait(10000)
    spawned = true
end)
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(sleeper)
        if spawned then
        TriggerServerEvent("autokick_highping:highping")
    end
end
end)