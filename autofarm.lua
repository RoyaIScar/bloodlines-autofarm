--[[
hilarious autofarm for bad naruto game that will be taken down by copyright at any time by scartesu
game has no anticheat as of right now so you can do hilarious stuff
this autofarm just snakes peoples loot since how they made rendering trinkets
honestly the devs for this game are so shitty releasing a game that doesnt look finished at all and literally no anti exploit at all
--]]
local combat = false
local dead = false
local event = game.ReplicatedStorage.Events.DataEvent
function grabtrinkets(trinkets)
    event:FireServer("PickUp",trinkets)
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(60000000, 60000000, 60000000, 1, 0, 0, 0, 1, 0, 0, 0, 1)
game.Players.LocalPlayer.Character.Torso.Anchored = true
task.wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2865.08813, 456.738953, -1090.94714, 1, 0, 0, 0, 1, 0, 0, 0, 1)

for _,v in next, getconnections(game.Players.LocalPlayer.Idled) do
v:Disable()
end

game.ReplicatedStorage.ChildAdded:connect(function(ae)
if combat == false then
if ae:IsA("MeshPart") and ae.Name ~= "Peach" and ae.Name ~= "Apple" and ae.Name ~= "Orange" and ae.Name ~= "Pear" and ae.Name ~= "Mango" and ae.Name ~= "Banana" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ae.CFrame
repeat task.wait() until ae:FindFirstChild("ID")

repeat task.wait()
pcall(function() -- fuck you
grabtrinkets(ae.ID.Value)
end)
until not ae:FindFirstChild("Pickupable")

       end
    end
end)

task.spawn(function()
while task.wait() do
    if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
        dead = true
    end
    if game.Players.LocalPlayer.PlayerGui.ClientGui.Mainframe.Danger.Visible == true then
        combat = true
        else
        combat = false
        end
    end
end)

repeat task.wait()
if dead == true then
    game.Players.LocalPlayer:Kick("niga died somehow")
end
if combat == true then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2865.08813, 456.738953, -1090.94714, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end

event:FireServer("RemoveFireAilment")
until dead == true
