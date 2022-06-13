local lib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/Vape.txt")()

local win = lib:Window("CupWare - Monster Ghoul | https://discord.gg/G4Z7h2pMzg",Color3.fromRGB(44, 120, 224), Enum.KeyCode.RightControl)

local tab = win:Tab("Main")

local playertab = win:Tab("Local Player")

playertab:Button("Hide Name", function()
lib:Notification("", "After you turned on this option you can't show your name back until rejoined.", "I Understand")
while wait(0.25) do
    for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
       if v.ClassName == "BillboardGui" then
           v:Destroy()
       end
    end
  end
end)

tab:Toggle("Autofarm Aogiri Members (Mid-High)",false, function(farm)
    if farm then
        --anti afk
        local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
wait(1)
vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
        

--starting mid-high
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.1)
for k, v in pairs(workspace.MidSpawns:GetChildren()) do 
if v.Name == "CF16" then
   v.Name = "CF0" .. k
end
end
for k, v in pairs(workspace.MidSpawns:GetChildren()) do 
if v.Name == "CF11" then
   v.Name = "CF0" .. k
end
end
for k, v in pairs(workspace.MidSpawns:GetChildren()) do 
if v.Name == "CF12" then
   v.Name = "CF0" .. k
end
end
for k, v in pairs(workspace.HighSpawns:GetChildren()) do 
if v.Name == "CF13" then
   v.Name = "CF1" .. k
end
end



--tp to spot
local New_CFrame = CFrame.new(601.627, 108.149, 989.696)

local ts = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local char = game.Players.LocalPlayer.Character

local part = char.HumanoidRootPart
local ti = TweenInfo.new(0.05, Enum.EasingStyle.Linear)
local tp = {CFrame = New_CFrame}
ts:Create(part, ti, tp):Play()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.3)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true



--bring mob

_G.bringmob = true

---change parent mid 1
game:GetService"RunService".RenderStepped:Connect(function()
game.Workspace.MidSpawns.CF01["Mid Level Aogiri"].Parent = game.Workspace
game.Workspace.MidSpawns.CF02["Mid Level Aogiri"].Parent = game.Workspace
game.Workspace.MidSpawns.CF03["Mid Level Aogiri"].Parent = game.Workspace
end)
---change parent mid 2
game:GetService"RunService".RenderStepped:Connect(function()
game.Workspace.MidSpawns.CF04["Mid Level Aogiri"].Parent = game.Workspace
game.Workspace.MidSpawns.CF05["Mid Level Aogiri"].Parent = game.Workspace
game.Workspace.MidSpawns.CF06["Mid Level Aogiri"].Parent = game.Workspace
game.Workspace.MidSpawns.CF07["Mid Level Aogiri"].Parent = game.Workspace
end)
---change parent mid 3
game:GetService"RunService".RenderStepped:Connect(function()
game.Workspace.MidSpawns.CF08["Mid Level Aogiri"].Parent = game.Workspace
game.Workspace.MidSpawns.CF09["Mid Level Aogiri"].Parent = game.Workspace
game.Workspace.MidSpawns.CF010["Mid Level Aogiri"].Parent = game.Workspace
end)
---change Parent High
game:GetService"RunService".RenderStepped:Connect(function()
game.Workspace.HighSpawns.CF11["High Level Aogiri"].Parent = game.Workspace
game.Workspace.HighSpawns.CF13["High Level Aogiri"].Parent = game.Workspace
game.Workspace.HighSpawns.CF14["High Level Aogiri"].Parent = game.Workspace
game.Workspace.HighSpawns.CF15["High Level Aogiri"].Parent = game.Workspace
end)
---change Name
game:GetService"RunService".RenderStepped:Connect(function()
game.Workspace["High Level Aogiri"].Name = "Mid Level Aogiri"
game.Workspace["High Level Aogiri"].Name = "Mid Level Aogiri"
game.Workspace["High Level Aogiri"].Name = "Mid Level Aogiri"
game.Workspace["High Level Aogiri"].Name = "Mid Level Aogiri"
end)
--eat
game:GetService"RunService".RenderStepped:Connect(function()
for i,v in pairs(workspace:GetDescendants()) do
if v:IsA("ClickDetector") then
fireclickdetector(v)
end
end
end)


while _G.bringmob do wait()

   local button = game.Players.LocalPlayer.PlayerGui.MobileClick.Click

 local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
for i,v in pairs(events) do
for i,v in pairs(getconnections(button[v])) do
    v:Fire()
end
end
pcall(function()
for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
for x,y in pairs(game:GetService("Workspace"):GetChildren()) do
if v.Name == "Mid Level Aogiri" then
if y.Name == "Mid Level Aogiri" then
v.HumanoidRootPart.CFrame = y.HumanoidRootPart.CFrame
v.HumanoidRootPart.Size = Vector3.new(60,60,60)
y.HumanoidRootPart.Size = Vector3.new(60,60,60)
v.HumanoidRootPart.CFrame = CFrame.new(605.713623, 108.148788, 995.268677, -0.828714371, -5.12342311e-08, -0.559671819, -2.94714262e-08, 1, -4.79045674e-08, 0.559671819, -2.32048762e-08, -0.828714371)
y.HumanoidRootPart.CFrame = CFrame.new(605.713623, 108.148788, 995.268677, -0.828714371, -5.12342311e-08, -0.559671819, -2.94714262e-08, 1, -4.79045674e-08, 0.559671819, -2.32048762e-08, -0.828714371)
v.HumanoidRootPart.Transparency = 1
v.HumanoidRootPart.CanCollide = false
y.HumanoidRootPart.CanCollide = false
v.Humanoid.WalkSpeed = 0
y.Humanoid.WalkSpeed = 0
v.Humanoid.JumpPower = 0
y.Humanoid.JumpPower = 0
v.HumanoidRootPart.Anchored = false
y.HumanoidRootPart.Anchored = false

if sethiddenproperty then
 sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)

end
end
end
end
end
end)
end

--lopp to spot

local New_CFrame = CFrame.new(601.627, 108.149, 989.696)
wait(600)
local ts = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local char = game.Players.LocalPlayer.Character

local part = char.HumanoidRootPart
local ti = TweenInfo.new(0.05, Enum.EasingStyle.Linear)
local tp = {CFrame = New_CFrame}
ts:Create(part, ti, tp):Play()
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
wait()
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
wait(0.03)
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        else
        _G.bringmob = false
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    end

end)

tab:Toggle("Auto Equip",false, function(equip)
    if equip then
        _G.auto = true
        while _G.auto do
         wait(3)
            if game.Players.LocalPlayer.PlayerGui.MainUI.StageNumber.One.Text == "1" then
            local button = game.Players.LocalPlayer.PlayerGui.MobileClick.Equip
        
             local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
            for i,v in pairs(events) do
            for i,v in pairs(getconnections(button[v])) do
                v:Fire()
        end
        end
        local button = game.Players.LocalPlayer.PlayerGui.MainUI.StageNumber.One
        
             local events = {"MouseButton1Click", "MouseButton1Down", "Activated"}
            for i,v in pairs(events) do
            for i,v in pairs(getconnections(button[v])) do
                v:Fire()
        
        
        end
        end
        end
        end
        else
            _G.auto = false
    end
end)

playertab:Slider("Speed",0,100,16, function(speed)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (speed)
end)

playertab:Slider("Jump Power",0,200,32, function(jump)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = (jump)
    end)


local changeclr = win:Tab("Change UI Color")

changeclr:Colorpicker("Change UI Color",Color3.fromRGB(44, 120, 224), function(t)
lib:ChangePresetColor(Color3.fromRGB(t.R * 255, t.G * 255, t.B * 255))
end)