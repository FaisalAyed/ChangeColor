local isInVehicle = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            if not isInVehicle then
                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                Citizen.Wait(500)
                SetVehicleFixed(vehicle)
                Citizen.Wait(700)
                SetVehicleCustomPrimaryColour(vehicle, 255, 0, 0)
                isInVehicle = true
            end
        else
            isInVehicle = false
        end
    end
end)
