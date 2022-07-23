--[[
hilarious autofarm for bad naruto game that will be taken down by copyright at any time by scartesu
game has no anticheat as of right now so you can do hilarious stuff
this autofarm just snakes peoples loot since how they made rendering trinkets
honestly the devs for this game are so shitty releasing a game that doesnt look finished at all and literally no anti exploit at all
--]]

local dead = false
local event = game.ReplicatedStorage.Events.DataEvent

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-2865.08813, 456.738953, -1090.94714, 1, 0, 0, 0, 1, 0, 0, 0, 1)
task.wait(0.5)
game.Players.LocalPlayer.Character.HumanoidRootPart.RootJoint:Destroy()
game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = true
function grabtrinkets(trinkets)
    event:FireServer("PickUp",trinkets)
end

game.ReplicatedStorage.ChildAdded:connect(function(ae)
if ae:IsA("MeshPart") and ae.Name ~= "Peach" and ae.Name ~= "Apple" and ae.Name ~= "Orange" and ae.Name ~= "Pear" and ae.Name ~= "Mango" and ae.Name ~= "Banana" then
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = ae.CFrame
    repeat task.wait() until ae:FindFirstChild("ID")
grabtrinkets(ae.ID.Value)
    end
end)

task.spawn(function()
while task.wait() do
    if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") or game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
        dead = true
       end
    end
end)

repeat task.wait()
if dead == true then
    game.Players.LocalPlayer:Kick("niga died somehow")

end
until dead == true
