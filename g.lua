local field = "Blackberry Field"
game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "work?"
function farm()
  repeat
    local turn = 0    while turn < 10 do        turn = turn + 1        wait(1)        game.Players.LocalPlayer.PlayerGui.Main.ShopFrame.Prefix.Text = "farming"
        game:GetService("Players").LocalPlayer.Character.Shovel.ToolRemote:FireServer(true)
        for i, v in pairs(game.Workspace.Debris.Tokens:GetChildren()) do            wait(.05)
            if v:WaitForChild("TokenName", 0.1) then
                local name = v:WaitForChild("TokenName", 0.1).Value
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
   for n, m in pairs(game.Workspace.Hives:GetChildren()) do
        if v.Platform.Top.Username.User.Text == "kegietong" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                v.Platform.Top.CFrame * CFrame.new(-4, 0, 0) * CFrame.fromEulerAngles(0, 0, math.rad(90))
        end
    end
   game.ReplicatedStorage.Remotes.MakeHoney:FireServer()
