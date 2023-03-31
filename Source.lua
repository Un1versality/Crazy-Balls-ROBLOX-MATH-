local latest = game.Workspace[1]
local latestuppartpos = nil
local moveupmorepos = nil
local rep1 = 0
local function getnewname(str)
	local sub = latest.Name
	local num = tonumber(sub)
	local newnum = num + 1
	local newname = newnum
	return newname
end
local function newpart(pos)
	local x = latest:Clone()
	local y = getnewname(x.Name)
	x.Parent = workspace
	x.Name = y
	x.Position = pos
	return x
end
local function calcmoveto()
	local y_k = 3
	local y_m = 0
	local z_q = 0
	local x_1 = latest.Position
	local x_2 = x_1 + Vector3.new(y_k,y_m,z_q)
	return x_2
end
local function moveup()
	return latest.Position + Vector3.new(0,0.6,1.5)
end
local function moveupmore()
	return latestuppartpos + Vector3.new(0,0.6,-1.2)
end
local function UpPart()
	local upp = latest:Clone()
	upp.Parent = workspace
	upp.Position = moveup()
	upp.Name = "UpPart"
	latestuppartpos = upp.Position + Vector3.new(math.random(0.4,5),math.random(1,12),1.5)
	return upp
end
local function UpPart2()
	local upp = latest:Clone()
	if latestuppartpos ~= nil then
		upp.Parent = workspace
		upp.Position = moveupmore()
		upp.Name = "UpPart"
		moveupmorepos = upp.Position
		local upp2 = latest:Clone()
		upp2.Parent = workspace
		upp2.Position = moveupmorepos + Vector3.new(0,0.6 + (rep1 * 0.5) + math.random(0.2,0.4),1.2 * math.random(0.2,0.23) + (rep1 * 0.5) - 0.2)
		local upp3 = latest:Clone()
		upp3.Parent = workspace
		upp3.Position = moveupmorepos + Vector3.new(1,0.2,-2.52) + Vector3.new(0,math.abs(0.9) + (rep1 * math.abs(0.36)) + math.random(0.21,0.4),1.3 * math.random(math.abs(0.62),0.68) + (rep1 * 0.23) - 0.4)
	end
	return upp
end
local function UpPart3()
	local sum1 = latest:Clone()
	if latest ~= nil then
		sum1.Color = Color3.fromRGB(34, 255, 0)
		sum1.PointLight.Range = 14.5
		sum1.PointLight.Color = Color3.fromRGB(38, 255, 0)
		sum1.Parent = workspace
		sum1.Name = "sum1"
		sum1.Position = latest.Position + Vector3.new(math.random(1,7.2),math.random(1,3.2),math.random(0.562,3.23)) + Vector3.new(0.001,0.1,math.abs(0.23))
	end
end
local function UpPart4()
	local sum1 = latest:Clone()
	if latest ~= nil then
		sum1.Color = Color3.fromRGB(115, 0, 255)
		sum1.PointLight.Color = Color3.fromRGB(128, 0, 255)
		sum1.PointLight.Range = 60
		sum1.Parent = workspace
		sum1.Name = "sum1"
		sum1.Position = latest.Position + Vector3.new(math.random(2,12.2),math.random(3,98.2),math.random(1.262,22.23)) + Vector3.new(0.0981,1.3,math.abs(1.47))
	end
end
local function UpPart5()
	local sum1 = latest:Clone()
	if latest ~= nil then
		sum1.Color = Color3.fromRGB(255, 158, 21)
		sum1.PointLight.Color = Color3.fromRGB(255, 136, 0)
		sum1.PointLight.Range = 14.5
		sum1.Parent = workspace
		sum1.Name = "sum1"
		sum1.Position = latest.Position + Vector3.new(math.random(5,8.2),math.random(2,12.2),math.random(0.962,12.23)) + Vector3.new(0.021,0.3,math.abs(0.43))
	end
end
local function UpPart6()
	local sum1 = latest:Clone()
	if latest ~= nil then
		sum1.Color = Color3.fromRGB(0, 251, 255)
		sum1.PointLight.Color = Color3.fromRGB(0, 255, 238)
		sum1.PointLight.Range = 60
		sum1.Parent = workspace
		sum1.Name = "sum1"
		sum1.Position = latest.Position + Vector3.new(math.random(8,22.2),math.random(5,68.2),math.random(1.2662,43.2)) + Vector3.new(0.1981,1.2,math.abs(1.87))
	end
end
local rep = 30
for i=0, rep do
	rep1 = i
	task.wait(0.12)
	local c = calcmoveto()
	local pq = newpart(c)
	local UpPart = UpPart()
	local UpPart2_ = UpPart2()
	local lq = UpPart3()
	local lq2 = UpPart5()
	local lq_1 = UpPart4()
	local kq12 = UpPart6()
	latest = game.Workspace[pq.Name]
end
