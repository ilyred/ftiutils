-- util lib - https://github.com/ilyred

local players = game:GetService("Players")

local utils = {
    Objects = setmetatable({}, {__mode="kv"})
}





function utils:getpath(item)
	v = item
	p = item.Name .. "."
	while (true) do
		if not v.Parent.Parent then
			p = p .. v.Parent.Name
			break
		else
			p = p .. v.Parent.Name .. "."
		end
		v = v.Parent
	end
	return p
end


function utils:cframetov3(cf) 
   return Vector3.new(cf.X, cf.Y, cf.Z)
end


function utils:resolvename(name)
    if not players:FindFirstChild(name) then
        for _,player in pairs(players:GetPlayers()) do
    		if player.DisplayName == display then return player.name end
        end
	    return ""
	else
        return name
    end
end


function utils:displaytoname(display) 
	for _,player in pairs(players:GetPlayers()) do
		if player.DisplayName == display then
			return player.name
		end
	end
	return ""
end

return utils
