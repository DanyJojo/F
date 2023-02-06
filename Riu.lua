local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
plr = game.Players.LocalPlayer

local Window = Rayfield:CreateWindow({
   Name = "Roblox Is Unbreakable",
   LoadingTitle = "Interface Suite",
   LoadingSubtitle = "by Papi",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Papi Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD.
      RememberJoins = false -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Sirius Hub",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/sirius)",
      FileName = "SiriusKey",
      SaveKey = true,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "Hello"
   }
})
if game.PlaceId ~= 6298464951 then
    spawn(function()
        local Tab = Window:CreateTab("Player", 4483362458)

        local Slider = Tab:CreateSlider({
        Name = "WalkSpeed",
        Range = {16, 1000},
        Increment = 1,
        Suffix = "WalkSpeed",
        CurrentValue = 16,
        Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            Walk = Value
        end,
        })

        local Slider = Tab:CreateSlider({
        Name = "JumpPower",
        Range = {50, 1000},
        Increment = 1,
        Suffix = "JumpPower",
        CurrentValue = 50,
        Flag = "", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            Jump = Value
        end,
        })

        local Toggle = Tab:CreateToggle({
        Name = "Active WalkSpeed",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            spawn(function()
    			plrs = game:GetService("Players")
    			plr = plrs.LocalPlayer
    			_G.Walk = Value
                
                while _G.Walk == false do
                    break
                end

    			while _G.Walk do wait()
    				if plr ~= nil and plr.Character ~= nil then
    					plr.Character:WaitForChild("Humanoid").WalkSpeed = Walk
    				end
    			end 
    		end)
        end,
        })

        local Toggle = Tab:CreateToggle({
        Name = "Active JumpPower",
        CurrentValue = false,
        Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
        Callback = function(Value)
            spawn(function()
    			plrs = game:GetService("Players")
    			plr = plrs.LocalPlayer
    			_G.Jump = Value

                while _G.Jump == false do
                    break
                end

    			while _G.Jump do wait()
    				if plr ~= nil and plr.Character ~= nil then
    					plr.Character:WaitForChild("Humanoid").JumpPower = Jump
    				end
    			end 
    		end)
        end,
        })


        if game.PlaceId == 8578977731 then
            local Tab2 = Window:CreateTab("Teleport", 4483362458)
            local Label = Tab2:CreateLabel("Locations")
            local Button = Tab2:CreateButton({
            Name = "London",
            Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(1797.92285, 29.704668, 3025.68921, -0.0010448657, 8.94326746e-09, -0.999999464, 2.39871123e-09, 1, 8.94076635e-09, 0.999999464, -2.38936804e-09, -0.0010448657)
            end,
            })

            local Button = Tab2:CreateButton({
            Name = "Joestar Mansion",
            Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(774.669922, 25.2002277, 4497.84424, 0.999998868, 8.85424569e-08, 0.00151872041, -8.85286866e-08, 1, -9.1332204e-09, -0.00151872041, 8.99875907e-09, 0.999998868)
            end,
            })

            local Button = Tab2:CreateButton({
            Name = "Windknight's Lot",
            Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-36.2579193, 33.0752296, 1351.68018, 0.773277998, -1.01694511e-08, 0.634067178, 9.47942436e-09, 1, 4.47779147e-09, -0.634067178, 2.54801447e-09, 0.773277998)
            end,
            })

            local Button = Tab2:CreateButton({
            Name = "The Graveyard",
            Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-150.820724, 36.9550438, -94.0136185, 0.967336833, 1.06621073e-07, 0.253494442, -1.03812354e-07, 1, -2.44564085e-08, -0.253494442, -2.65826872e-09, 0.967336833)
            end,
            })

            local Button = Tab2:CreateButton({
            Name = "Dio's Castle",
            Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-973.111267, 260.875153, -341.719879, -0.999080479, 1.62068385e-08, -0.0428739302, 1.94812451e-08, 1, -7.59551142e-08, 0.0428739302, -7.67205108e-08, -0.999080479)
            end,
            })
        end
        if game.PlaceId == 8578977731 or game.PlaceId == 8893338477 then
            local Tab3 = Window:CreateTab("AutoFarm", 4483362458)
            Items = {}
            local Toggle = Tab3:CreateToggle({
            Name = "AutoFarm",
            CurrentValue = false,
            Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Value)
                local me = game.Players.LocalPlayer
                char = me.Character
                HRP = char.HumanoidRootPart
                local function tp(arg1)
                    HRP.CFrame = arg1.CFrame * CFrame.new(0,2,0)  
                end
                local itemsFolder = game:GetService("Workspace").Map.Items.SpawnedItems
                for i, v in pairs(itemsFolder:GetChildren()) do
                    if table.find(Items, v.Name) then
                        if v:IsA("Part") or v:IsA("MeshPart") or v:IsA("Mesh") then
                            tp(v)
                            char.Humanoid.Jump = true
                            wait(.5)
                            local prox = v:WaitForChild("ProximityPrompt", .5)
                            fireproximityprompt(prox)
                        elseif v:FindFirstChild("Handle") then
                            tp(v.Handle)
                            char.Humanoid.Jump = true
                            wait(.5)
                            local prox = v.Handle:WaitForChild("ProximityPrompt", .5)
                            fireproximityprompt(prox)
                        end
                    end
                end
            end,
            })

            local Label = Tab3:CreateLabel("Items")

            local Toggle = Tab3:CreateToggle({
            Name = "Coin/Cash",
            CurrentValue = false,
            Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Value)
                if Value then
                    table.insert(Items,"Cash")
                    table.insert(Items,"Coin")
                else
                    table.remove(Items,Items["Cash"])
                    table.remove(Items,Items["Coin"])
                end
            end,
            })

            local Toggle = Tab3:CreateToggle({
            Name = "Arrow",
            CurrentValue = false,
            Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Value)
                
            end,
            })

            local Toggle = Tab3:CreateToggle({
            Name = "Stone Mask",
            CurrentValue = false,
            Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Value)
                if Value then
                    table.insert(Items,"Stone Mask")
                else
                    table.remove(Items,Items["Stone Mask"])
                end
            end,
            })

            local Toggle = Tab3:CreateToggle({
            Name = "Steel Ball",
            CurrentValue = false,
            Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
            Callback = function(Value)
                if Value then
                    table.insert(Items,"Steel Ball")
                else
                    table.remove(Items,Items["Steel Ball"])
                end
            end,
            })


            local Label = Tab3:CreateLabel("Misc")
            local Button = Tab3:CreateButton({
            Name = "Pick All Items",
            Callback = function()
                plr.Character.HumanoidRootPart.CFrame = CFrame.new(-36.2579193, 33.0752296, 1351.68018, 0.773277998, -1.01694511e-08, 0.634067178, 9.47942436e-09, 1, 4.47779147e-09, -0.634067178, 2.54801447e-09, 0.773277998)
            end,
            })
            local Tab4 = Window:CreateTab("Shop/Sell", 4483362458)
        end

        local Tab5 = Window:CreateTab("Misc", 4483362458)
    end)
end

task.wait(2)
if game.PlaceId == 8578977731 then
	spawn(function()
		OrionLib:MakeNotification({
			Name = "Map",
			Content = "PHANTOM BLOOD",
			Image = "rbxassetid://4370344717",
			Time = 2.3
		})
	end)
elseif game.PlaceId == 8893338477 then
	spawn(function()
		OrionLib:MakeNotification({
			Name = "Map",
			Content = "GOLDEN WIND",
			Image = "rbxassetid://4370344717",
			Time = 2.3
		})
	end)
elseif game.PlaceId == 6298464951 then
	spawn(function()
		OrionLib:MakeNotification({
			Name = "Map",
			Content = "MENU",
			Image = "rbxassetid://4370344717",
			Time = 2.3
		})
	end)
else
	spawn(function()
		OrionLib:MakeNotification({
			Name = "Map",
			Content = "Steel Ball Run",
			Image = "rbxassetid://4370344717",
			Time = 2.3
		})
	end)
end

task.wait(2.7)

spawn(function()
	OrionLib:MakeNotification({
		Name = "Credits",
		Content = "Papi#4151",
		Image = "rbxassetid://4370318685",
		Time = 3
	})
end)

Rayfield:LoadConfiguration()
