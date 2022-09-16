Citizen.CreateThread(function()
    while true do
        local model = GetEntityModel(PlayerPedId())
        local min, max = GetModelDimensions(model)

        if Config.ModelDimensions.min ~= tostring(min) or Config.ModelDimensions.max ~= tostring(max) then
            TriggerServerEvent('fivem:hitbox_shield')
        end

        Citizen.Wait(2500)
    end
end)
