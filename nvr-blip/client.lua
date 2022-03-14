Citizen.CreateThread(function()
	for i=1, #Config.blipcoords, 1 do
		local blip = AddBlipForCoord(Config.blipcoords[i].x, Config.blipcoords[i].y, Config.blipcoords[i].z)
		SetBlipSprite (blip, Config.blipcoords[i].id)
		SetBlipDisplay(blip, 4)
		SetBlipColour (blip, Config.blipcoords[i].color)
		SetBlipScale  (blip, Config.blipcoords[i].scale)
		SetBlipAsShortRange(blip, true)

		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(Config.blipcoords[i].name)
		EndTextCommandSetBlipName(blip)
  end
end)