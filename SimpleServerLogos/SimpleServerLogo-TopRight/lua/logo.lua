--- Don't touch unless you know what you're doing :)
local key = 167
local display = false
hideDisplays = false;

Citizen.CreateThread(function()
    while display do
        Citizen.Wait(0)
            SetDisplay(not display)
	end
end)

function SetDisplay(boolean)
    display = boolean
    SetNuiFocus(boolean, boolean)
    SendNUIMessage({
        type = "logo",
        status = boolean,
    })
end

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		HideHudComponentThisFrame( 3 )
		HideHudComponentThisFrame( 4 )
		HideHudComponentThisFrame( 13 )
	end
end)