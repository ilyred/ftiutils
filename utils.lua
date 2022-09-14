# made by red

# local ftiutils = loadstring(game:HttpGet("https://raw.githubusercontent.com/ilyred/ftiutils/main/utils.lua"))()

local function getpath(item)
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


local function cframetov3(cf) 
   return Vector3.new(cf.X, cf.Y, cf.Z)
end


local function resolvename(name)
    if not players:FindFirstChild(name) then
        for _,player in pairs(players:GetPlayers()) do
    		if player.DisplayName == display then return player.name end
        end
	    return ""
	else
        return name
    end
end


local function displaytoname(display) 
	for _,player in pairs(players:GetPlayers()) do
		if player.DisplayName == display then
			return player.name
		end
	end
	return ""
end
