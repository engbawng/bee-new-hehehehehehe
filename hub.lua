local uilibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiet1308/tvkhub/main/rac"))()
local windowz = uilibrary:CreateWindow("UI Library", "BangLaptop", true)

local Page1 = windowz:CreatePage("Home")
local Page2 = windowz:CreatePage("Main")
local field = "Black Berry"
local Section1 = Page2:CreateSection("Farm")
Section1:CreateToggle("Farming", {Toggled=false , Description = false}, function(Value)
while Value do
local field = "Blackberry Field"
game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "work?"
function farm()
  repeat
      local plrmag = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local fieldmag = game.Workspace.Fields[field].FieldZone.Position
if (plrmag-fieldmag).magnitude >100 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Workspace.Fields[field].FieldZone.CFrame
end
    local turn = 0    while turn < 10 do        turn = turn + 1        wait(1)        game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "farming"
        for i, v in pairs(game.Workspace.Debris.Tokens:GetChildren()) do            wait(.05)
            if v:WaitForChild("TokenName", 0.1) then
                local name = v:WaitForChild("TokenName", 0.1).Value
            game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool").ToolRemote:FireServer(true)
                if v.Name == "All" and name ~= "Honey" and name ~= "Royal Jelly" and name ~= "Treat" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                    game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "prior item free"
                end
                if v.Name == "kegietong" and name == "TokenLink" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                    game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "prior tokenlink"
                end
                if v.Name == "kegietong" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                    wait()
                end
            end
        end end

    local num = game.Players.LocalPlayer.PlayerGui.Main.MeterHUD.PollenMeter.Label.Text
    local num1, num2 = num:match("([^/]+)/([^/]+)")
    num1 = num1:gsub(",", "")
    num2 = num2:gsub(",", "")
    wait(1)
      until tonumber(num1) >= tonumber(num2)
end
farm()
game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "full"
wait(6)
    for i, v in pairs(game.Workspace.Hives:GetChildren()) do
        if v.Platform.Top.Username.User.Text == "kegietong" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                v.Platform.Top.CFrame * CFrame.new(-4, 0, 0) * CFrame.fromEulerAngles(0, 0, math.rad(90))
        end
    end
    game.ReplicatedStorage.Remotes.MakeHoney:FireServer("")

    repeat
        wait(2)
      game.ReplicatedStorage.Remotes.MakeHoney:FireServer("")
    local num = game.Players.LocalPlayer.PlayerGui.Main.MeterHUD.PollenMeter.Label.Text
        local num1, num2 = num:match("([^/]+)/([^/]+)")
        num1 = num1:gsub(",", "")
        num2 = num2:gsub(",", "")
    until tonumber(num1) == 0
game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "empty"
wait(1)
end

    
end)

Section1:CreateDropdown("Seclect Feilds ", {
   List = game.Workspace.Fields:GetChildren(),
   Default = "Blackberry"}, function(value)
       field = value
end)

local Section2 = Page2:CreateSection("Quest")
local Page2 = windowz:CreatePage("Misc")
local Section1 = Page2:CreateSection("Save Memory")
Section1:CreateButton("Button Example", function ()
game.AreaBarriers:Destroy()
game.Doors:Destroy()
game.Map.Deseart:Destroy()
game.Map.Bushes:Destroy()
game.Map.Trees:Destroy()
game.Map.Grass:Destroy()
game.Map.Fence:Destroy()
game.Map.Folder:Destroy()
game.Folderd:Destroy()
end)

Section1:CreateSlider("Slider Example", {Min = 16, Max = 500, DefaultValue = 30}, function(Value)
   print(Value)
end)

Section1:CreateToggle("Toggle Example", {Toggled=false , Description = false}, function(Value)
   print(Value)
end)

Section1:CreateButton("Button Example", function ()
   print("Button Cliked!")
end)

Section1:CreateTextbox("TextBox", false, function (vv)
   print(vv)
end)

Section1:CreateDropdown("Dropdown ", {
   List = {"Value1", "Value2", "Value3", "Value4"},
   Default = "None"}, function(value)
       print(value)
end)

Section1:CreateColorPicker("Color Picker", Color3.fromRGB(255, 255, 255), function ()
   print("fsf")
end)

local dropdown = Section1:CreateDropdown("Refresh Dropdown ", {
   List = {"Value1", "Value2", "Value3", "Value4"},
   Default = "None"}, function(value)
       print(value)
end)



Section1:CreateButton("Refresh Example", function ()
   local newlist = {"resf", "uwua", "fsk"}
   dropdown:Clear()
   wait(1)
   dropdown:Add(newlist)
end)
