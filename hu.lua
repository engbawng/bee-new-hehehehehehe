local uilibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kiet1308/tvkhub/main/rac"))()
local windowz = uilibrary:CreateWindow("", "BangLaptop", true)

local Page1 = windowz:CreatePage("Home")
local Page2 = windowz:CreatePage("Main")
local field = "Blackberry Field"
local Section1 = Page2:CreateSection("Farm")
Section1:CreateToggle("Farming", {Toggled=false , Description = false}, function(Value)
    if not Value then game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "Stopped" end
while Value do
function farm()
  repeat
                    print("h")
      local plrmag = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
local fieldmag = game.Workspace.Fields[field].FieldZone.Position
if (plrmag-fieldmag).magnitude >100 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            game.Workspace.Fields[field].FieldZone.CFrame
end
    local turn = 0    
                    while turn < 10 do   
                        turn = turn + 1     
                        wait()     
                        print("f")
     game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "Farming"
                             local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
    local clickEvent = tool:FindFirstChild("ClickEvent", true)
                    if clickEvent then
                        clickEvent:FireServer()
                    end
for i, v in pairs(game.Workspace.Debris.Tokens:GetChildren()) do  
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 1) -- Simulate touching
                            print("getting")
    firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v, 0) -- End touch
end



 end

    local num = game.Players.LocalPlayer.PlayerGui.Main.MeterHUD.PollenMeter.Label.Text
    local num1, num2 = num:match("([^/]+)/([^/]+)")
    num1 = num1:gsub(",", "")
    num2 = num2:gsub(",", "")
    wait()
                    print(num1)
      until tonumber(num1) >= tonumber(num2)
end
farm()
game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "Full"
wait(6)
    for i, v in pairs(game.Workspace.Hives:GetChildren()) do
        if v.Platform.Top.Username.User.Text == "kegietong" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                v.Platform.Top.CFrame * CFrame.new(-4, 0, 0) * CFrame.fromEulerAngles(0, 0, math.rad(90))
        end
    end
    game.ReplicatedStorage.Remotes.MakeHoney:FireServer("")

    repeat
        wait()
      game.ReplicatedStorage.Remotes.MakeHoney:FireServer("")
    local num = game.Players.LocalPlayer.PlayerGui.Main.MeterHUD.PollenMeter.Label.Text
        local num1, num2 = num:match("([^/]+)/([^/]+)")
        num1 = num1:gsub(",", "")
        num2 = num2:gsub(",", "")
    until tonumber(num1) == 0
game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "Empty"
wait(1)
end

    
end)
local fields ={}
for i,v in pairs(game.Workspace.Fields:GetChildren()) do
  table.insert(fields,tostring(v))
end
Section1:CreateDropdown("Seclect Feilds ", {
   List = fields,
   Default = "Blackberry"}, function(value)
       field = value
end)

local Section2 = Page2:CreateSection("Quest")
local Page2 = windowz:CreatePage("Misc")
local Section1 = Page2:CreateSection("Save Memory")
Section1:CreateButton("Clear Map", function ()
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


-- Section1:CreateSlider("Slider Example", {Min = 16, Max = 500, DefaultValue = 30}, function(Value)
--    print(Value)
-- end)

-- Section1:CreateToggle("Toggle Example", {Toggled=false , Description = false}, function(Value)
--    print(Value)
-- end)

-- Section1:CreateButton("Button Example", function ()
--    print("Button Cliked!")
-- end)

-- Section1:CreateTextbox("TextBox", false, function (vv)
--    print(vv)
-- end)

-- Section1:CreateDropdown("Dropdown ", {
--    List = {"Value1", "Value2", "Value3", "Value4"},
--    Default = "None"}, function(value)
--        print(value)
-- end)

-- Section1:CreateColorPicker("Color Picker", Color3.fromRGB(255, 255, 255), function ()
--    print("fsf")
-- end)

-- local dropdown = Section1:CreateDropdown("Refresh Dropdown ", {
--    List = {"Value1", "Value2", "Value3", "Value4"},
--    Default = "None"}, function(value)
--        print(value)
-- end)



-- Section1:CreateButton("Refresh Example", function ()
--    local newlist = {"resf", "uwua", "fsk"}
--    dropdown:Clear()
--    wait(1)
--    dropdown:Add(newlist)
-- end)
