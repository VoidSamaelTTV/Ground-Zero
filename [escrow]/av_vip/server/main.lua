local webhook = "https://discord.com/api/webhooks/1025211395614183544/c15zCL-Rz_zC9B44C2TdjuOM3EV25L-C8GFWMuvWpgRfNjNCElT8Ax5Lz8AuqR5PL7Jr" -- Discord Logs

admins = {
--     'fivem:2939866',
     'license:ff8f02d878e83559198a173fbbb6e6c21a4ad8f8',
}


-- DON'T CHANGE ANYTHING FROM HERE OR IT WILL BREAK THE RESOURCE

local charset = {}

for i = 48,  57 do table.insert(charset, string.char(i)) end
for i = 65,  90 do table.insert(charset, string.char(i)) end
for i = 97, 122 do table.insert(charset, string.char(i)) end

function string.random(length)
	math.randomseed(os.time())
	if length > 0 then
		return string.random(length - 1) .. charset[math.random(1, #charset)]
	else
		return ""
	end
end

function isWhitelisted(player)
    local whitelisted = false
    for i,id in ipairs(admins) do
        for x,pid in ipairs(GetPlayerIdentifiers(player)) do
            if string.lower(pid) == string.lower(id) then
                whitelisted = true
            end
        end
    end
    return whitelisted
end

RegisterCommand(Config.CreateCommand, function(source, args)
    if source ~= 0 then
        if isWhitelisted(source) then
            if args ~= nil then
				local t = string.random(10)
				local p = args[1]
				local l = args[2]
				if tonumber(p) and tonumber(l) then
					MySQL.Sync.execute('INSERT INTO av_tebex (transaction, months, level) VALUES (@transaction, @months, @level)', {
						['@transaction'] = t,
						['@months'] = p,
						['@level'] = l
					})
					local msg = Config.Lang['giftcard_created']
					local type = 'success'
					TriggerClientEvent('av_vip:notification',source,type,msg)
					local hora = os.date("%d/%m/%Y %X")
					local quien = getIdenti(source)
					local content = {
						{
							["color"] = '12386304',
							["title"] = "** VIP Gift Card **",
							["description"] = '**Code:** '..t..'\n ** Months:** '..p..'\n **Level:** '..l..'\n **Created By: **'..quien,
							["footer"] = {
								["text"] = hora,
							},
						}
					}
					TriggerEvent('av_vip:discord',content)
				end
			end
        else
			local msg = Config.Lang['not_whitelisted']
			local type = 'error'
			TriggerClientEvent('av_vip:notification',source,type,msg)
		end
    end
end)

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		if string.len(GetConvar('sv_tebexSecret', '')) == 0 then
			print(Config.Lang['tebex_not_found'])
			return
		end
		RegisterCommand(Config.Command, function(source, args)
			if args[1] == nil then 
				local msg = Config.Lang['transaction_missing']
				local type = 'error'
				TriggerClientEvent('av_vip:notification',source,type,msg)
				return 
			end			
			local clave = tostring(args[1])
			set_vip(source,clave)			
		end)
	end
end)

RegisterServerEvent('av_vip:getVIP')
AddEventHandler('av_vip:getVIP', function(source, cb)
    local identifier = getIdenti(source)
	
	MySQL.Async.fetchAll("SELECT identifier, level as level, DATE_FORMAT(expiration,'%m-%d-%Y') as expiration FROM av_vip WHERE identifier = @identifier AND expiration >= CURDATE()", {
		['@identifier'] = identifier
	}, function(vip)
		if vip[1] ~= nil then
			local info = {found = true, vip = true, expiration = vip[1].expiration, level = vip[1].level}
			cb(info)
		else
			local info = {found = false, vip = false, expiration = false, level = 0}
			cb(info)
		end	
	end)
end)

RegisterServerEvent('av_vip:server:spawn')
AddEventHandler('av_vip:server:spawn', function()
	local _source = source
	local identifier = getIdenti(source)
	MySQL.Async.fetchAll("SELECT identifier, level as level, DATE_FORMAT(expiration,'%m-%d-%Y') as expiration FROM av_vip WHERE identifier = @identifier AND expiration >= CURDATE()", {
		['@identifier'] = identifier
	}, function(vip)
		if vip[1] ~= nil then
			local info = {found = true, vip = true, expiration = vip[1].expiration, level = vip[1].level}
			TriggerClientEvent('av_vip:spawn',_source,info)
		else
			local info = {found = false, vip = false, expiration = false, level = 0}
			TriggerClientEvent('av_vip:spawn',_source,info)
		end	
	end)
end)

function set_vip(source,id)	
	local result = MySQL.Sync.fetchAll('SELECT * FROM av_tebex WHERE transaction = @transaction', {['@transaction'] = id})
	if result[1] ~= nil then
		local canjeado = result[1].redeemed 
		local meses = result[1].months
		local nivel = result[1].level		
		if not canjeado then
			MySQL.Async.execute('UPDATE av_tebex SET redeemed = @redeemed WHERE transaction = @transaction', {
				['@redeemed'] = 1,
				['@transaction'] = id
			}, function(redeemed)
				if redeemed then
					add_month(source,meses,nivel)
					local identi = getIdenti(source)
					local hora = os.date("%d/%m/%Y %X")
					local content = {
						{
							["color"] = '12386304',
							["title"] = "** Code Redeemed **",
							["description"] = '**Transaction ID:** '..id..'\n **Identifier:** '..identi..'\n ** Months:** '..meses..'\n **Level:** '..nivel..'',
							["footer"] = {
								["text"] = hora,
							},
						}
					}
					TriggerEvent('av_vip:discord',content)
				end
			end)
		else
			local msg = Config.Lang['already_redeemed']
			local type = 'error'
			TriggerClientEvent('av_vip:notification',source,type,msg)
		end
	else
		local type = 'error'
		local msg = Config.Lang['transaction_not_found']	
		TriggerClientEvent('av_vip:notification',source,type,msg)
	end
end

RegisterCommand('tebex', function(_, arg) 
	local t = arg[1]
	local p = arg[2]
	local l = arg[3]
	MySQL.Sync.execute('INSERT INTO av_tebex (transaction, months, level) VALUES (@transaction, @months, @level)', {
		['@transaction'] = t,
		['@months'] = p,
		['@level'] = l
	})
	local hora = os.date("%d/%m/%Y %X")
	local content = {
		{
			["color"] = '12386304',
			["title"] = "** Code Created **",
			["description"] = '**Code:** '..t..'\n ** Months:** '..p..'\n **Level:** '..l..'\n **Created By:** Tebex',
			["footer"] = {
				["text"] = hora,
			},
		}
	}
	TriggerEvent('av_vip:discord',content)
end,true)

function add_month(source,mes,nivel)
	local id = getIdenti(source)		
	local t = tonumber(mes)
	local l = tonumber(nivel)	
	MySQL.Async.fetchAll("SELECT identifier, level as level, DATE_FORMAT(expiration,'%Y-%m-%d') as expiration FROM av_vip WHERE identifier = @identifier", {
		['@identifier'] = id
	}, function(result)
		if result[1] ~= nil then
			vencimiento = result[1].expiration
			if os.date('%Y-%m-%d') >= result[1].expiration then 
				vencimiento = os.date('%Y-%m-%d')
			end
			fecha = ",expiration = DATE_ADD('".. vencimiento .."', INTERVAL '"..t.."' MONTH)"
			MySQL.Sync.execute('UPDATE av_vip SET level = @nivel' .. fecha .. ' WHERE identifier=@identifier', {
				['@identifier'] = id,
				['@nivel'] = l
			})
			local type = 'success'
			local msg = Config.Lang['success']	
			TriggerClientEvent('av_vip:notification',source,type,msg)
			update(source)
		else
			MySQL.Sync.execute('INSERT INTO av_vip (identifier, level, expiration) VALUES (@identifier, @level, CURDATE() + INTERVAL '..t..' MONTH)', {
				['@identifier'] = id,
				['@level'] = l
			})
			local type = 'success'
			local msg = Config.Lang['success']	
			TriggerClientEvent('av_vip:notification',source,type,msg)
			update(source)
		end	
	end)
end	

function update(s)
	local _source = s
	local identifier = getIdenti(s)
	MySQL.Async.fetchAll("SELECT identifier, level as level, DATE_FORMAT(expiration,'%m-%d-%Y') as expiration FROM av_vip WHERE identifier = @identifier AND expiration >= CURDATE()", {
		['@identifier'] = identifier
	}, function(vip)
		if vip[1] ~= nil then
			local info = {found = true, vip = true, expiration = vip[1].expiration, level = vip[1].level}
			TriggerClientEvent('av_vip:spawn',_source,info)
		else
			local info = {found = false, vip = false, expiration = false, level = 0}
			TriggerClientEvent('av_vip:spawn',_source,info)
		end	
	end)
end

function getIdenti(source)
	for k,v in pairs(GetPlayerIdentifiers(source))do       
		if Config.Identifier == 'steam' then
			if string.sub(v, 1, string.len("steam:")) == "steam:" then
				return v
			end
		elseif Config.Identifier == 'license' then	
			if string.sub(v, 1, string.len("license:")) == "license:" then
				return v
			end 
		end
	end
end

RegisterServerEvent('av_vip:discord')
AddEventHandler('av_vip:discord', function(content)
	PerformHttpRequest(webhook, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = content}), { ['Content-Type'] = 'application/json' })
end)
