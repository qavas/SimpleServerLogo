
--by qavas#0746 - Contact me for any support :)
local display = false

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
            SetDisplay(not display)
	end
end)

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)

        DisableControlAction(0, 1, display)
        DisableControlAction(0, 2, display)
        DisableControlAction(0, 142, display)
        DisableControlAction(0, 18, display)
        DisableControlAction(0, 322, display)
        DisableControlAction(0, 106, display)
    end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		HideHudComponentThisFrame( 3 )
		HideHudComponentThisFrame( 4 )
		HideHudComponentThisFrame( 13 )
	end
end)