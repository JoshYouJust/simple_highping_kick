RegisterServerEvent("autokick_highping:highping")
AddEventHandler("autokick_highping:highping", function()
	local pingnum = 80 --default
    ping = GetPlayerPing(source)
	if ping >= pingnum then
		DropPlayer(source, "High Ping" .. " " .. "**" .. ping .. "**")
    end
end)