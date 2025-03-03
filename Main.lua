loadstring(game:HttpGet("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua"))()

local Window = MakeWindow({
    Hub = {
        Title = "Random Hub",
        Animation = "By: Dashh"
    },
MinimizeButton({
    Image = "http://www.roblox.com/asset/?id=76190632660322",
    Size = {50, 50},
    Color = Color3.fromRGB(10, 10, 10),
    Corner = true,
    Stroke = false,
    StrokeColor = Color3.fromRGB(255, 0, 0)
})
    
local Tab1o = MakeTab({Name = "Main"})

AddButton(Tab1o, {
     Name = "Aim-Cam",
    Callback = function()
getgenv().Camlock_Settings = {
        Prediction = 0.146,
        AimPart = "HumanoidRootPart",
        Key = "q",
        AutoPrediction = false,
        Notification = true,
        Button = true,
        AntiGroundShots = false,
        UnderGroundResolver = false,
 
        -- DO NOT TOUCH THIS OR THE CAMLOCK WILL NOT WORK --
        Version = "2.5.1",
        Credits = "space_0999",
        DiscordServer = "discord.gg/SKhamGzTdn"
    }
 
 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/elxocasXD/Trip-Hub/main/Scripts/Cam%20Lock.lua'))()
end
})

Toggle = AddToggle(Tab1o, {
    Name = "Auto Turn On Buso",
    Default = true,
    Callback = function(value)
        local function AutoHaki()
            if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end

        if value then
            while wait() and value do
                AutoHaki()
            end
        end
    end
})

local AwkV4 = false

local function autoRaceV4()
    while task.wait() do
        if AwkV4 then
            if LP.Character and LP.Character:FindFirstChild("RaceEnergy") and LP.Character.RaceEnergy.Value >= 1 and not LP.Character.RaceTransformed.Value then
                local be = game:service("VirtualInputManager")
                be:SendKeyEvent(true, "Y", false, game)
                task.wait()
                be:SendKeyEvent(false, "Y", false, game)
            end
        end
    end
end

task.spawn(autoRaceV4)

Toggle = AddToggle(Tab1o, {
    Name = "Auto Turn On Race v4",
    Default = false,
    Flag = "TurnOnV4",
    Save = true,
    Callback = function(vturnr4)
        AwkV4 = vturnr4
    end
})
