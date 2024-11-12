--[[

	Holograms / Floating text Script by Meh
	
	Just put in the coordinates you get when standing on the ground, it's above the ground then
	By default, you only see the hologram when you are within 10m of it, to change that, edit the 10.0 infront of the "then"
	The Default holograms are at the Observatory.
	
	If you want to add a line to the hologram, just make a new Draw3DText line with the same coordinates, and edit the vertical offset.
	
	Formatting:
			Draw3DText( x, y, z  vertical offset, "text", font, text size, text size)
			
			
	To add a new hologram, copy paste this example under the existing ones, and put coordinates and text into it.
	
		if GetDistanceBetweenCoords( X, Y, Z, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( X, Y, Z,  -1.400, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.600, "TEXT", 4, 0.1, 0.1)
			Draw3DText( X, Y, Z,  -1.800, "TEXT", 4, 0.1, 0.1)		
		end


]]--

Citizen.CreateThread(function()
    Holograms()
end)

function Holograms()
		while true do
			Citizen.Wait(0)			
				-- Hologram No. 1
		if GetDistanceBetweenCoords( -377.57, 1213.9, 326.71, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -377.57, 1213.9, 326.71  -1.400, "Base Building", 2, 0.1, 0.1)
		end		
				--Hologram No. 2
		if GetDistanceBetweenCoords( -385.48, 1191.33, 326.00, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -385.48, 1191.33, 326.00  -1.400, "Vehicle Rental", 2, 0.1, 0.1)
		end	

				--Hologram No. 3
		if GetDistanceBetweenCoords( -457.86, 1161.3, 325.86, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -457.86, 1161.3, 326.55  -1.400, "Quests", 2, 0.1, 0.1)
		end	
		
				--Hologram No. 4
		if GetDistanceBetweenCoords( -425.12, 1105.22, 327.68, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -425.12, 1105.22, 328.48  -1.400, "Trader", 2, 0.1, 0.1)
		end	

				--Hologram No. 5
		if GetDistanceBetweenCoords( -435.67, 1077.85, 327.68, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -435.67, 1077.85, 328.48  -1.400, "Medical Supplies", 2, 0.1, 0.1)
		end	

				--Hologram No. 6
		if GetDistanceBetweenCoords( -437.42, 1098.2, 327.68, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -437.87, 1098.22, 328.35 -1.400, "Marketplace", 2, 0.1, 0.1)
		end	

				--Hologram No. 7
		if GetDistanceBetweenCoords( -411.1, 1103.02, 328.48, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -411.1, 1103.02, 328.48  -1.400, "Upgrade Station", 2, 0.1, 0.1)
		end	

				--Hologram No. 8
		if GetDistanceBetweenCoords( -425.95, 1078.83, 327.68, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -425.95, 1078.83, 328.48  -1.400, "Consumables", 2, 0.1, 0.1)
		end	

				--Hologram No. 9
		if GetDistanceBetweenCoords( -429.21, 1089.44, 327.68, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -429.21, 1089.44, 328.48  -1.400, "Surgeon", 2, 0.1, 0.1)
		end	

				--Hologram No. 10
		if GetDistanceBetweenCoords( -453.14, 1093.53, 327.68, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -453.14, 1093.53, 328.48  -1.400, "Weapons", 2, 0.1, 0.1)
		end	

				--Hologram No. 11
		if GetDistanceBetweenCoords( -452.05, 1098.18, 327.68, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -452.05, 1098.18, 328.48  -1.400, "Attachments", 2, 0.1, 0.1)
		end	

				--Hologram No. 12
		if GetDistanceBetweenCoords( -444.62, 1087.75, 315.63, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -444.62, 1087.75, 316.43  -1.400, "Clothing", 2, 0.1, 0.1)
		end	

				--Hologram No. 13
		if GetDistanceBetweenCoords( -401.34, 1111.33, 325.87, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -401.34, 1111.33, 328.40  -1.400, "Storage Containter", 2, 0.1, 0.1)
		end	

				--Hologram No. 14
		if GetDistanceBetweenCoords( -423.05, 1205.12, 326.64, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -423.05, 1205.12, 326.64  -1.400, "Dealership", 2, 0.1, 0.1)
		end	

				--Hologram No. 15
		if GetDistanceBetweenCoords( -399.76, 1236.64, 326.14, GetEntityCoords(GetPlayerPed(-1))) < 10.0 then
			Draw3DText( -399.76, 1236.64, 326.14  -1.400, "Mechanic", 2, 0.1, 0.1)
		end	
	end
end

-------------------------------------------------------------------------------------------------------------------------
function Draw3DText(x,y,z,textInput,fontId,scaleX,scaleY)
         local px,py,pz=table.unpack(GetGameplayCamCoords())
         local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)    
         local scale = (1/dist)*20
         local fov = (1/GetGameplayCamFov())*100
         local scale = scale*fov   
         SetTextScale(scaleX*scale, scaleY*scale)
         SetTextFont(fontId)
         SetTextProportional(1)
         SetTextColour(250, 250, 250, 255)		-- You can change the text color here
         SetTextDropshadow(1, 1, 1, 1, 255)
         SetTextEdge(2, 0, 0, 0, 150)
         SetTextDropShadow()
         SetTextOutline()
         SetTextEntry("STRING")
         SetTextCentre(1)
         AddTextComponentString(textInput)
         SetDrawOrigin(x,y,z+2, 0)
         DrawText(0.0, 0.0)
         ClearDrawOrigin()
        end
