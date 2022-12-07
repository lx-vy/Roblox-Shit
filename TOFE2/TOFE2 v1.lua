local library = loadstring(game:HttpGet('https://raw.githubusercontent.com/cypherdh/VanisUILIB/main/.gitignore'))()

local Window = library:CreateWindow("TOFE2", "v1", 10044538000)

local Tab = Window:CreateTab("TOFE2")

local InfoPage = Tab:CreateFrame("Info")

TYSM = InfoPage:CreateLabel("TYSM For Using My Script")

DiscordUser = InfoPage:CreateButton("Lxvy#2069", "Copy my Discord username", function()
    setclipboard("Lxvy#2069")
end)

local MiscPage = Tab:CreateFrame("Misc")

AntiCheatBypass = MiscPage:CreateButton("Anti-Cheat Bypass", "Deletes Anti-Cheat Script", function()
    game:GetService("StarterPlayer").StarterCharacterScripts["Anti-Exploits"]:Destroy()
end)

RemoveFlood = MiscPage:CreateButton("Remove Flood", "Removes Water, Acid And Lava", function()
    game.Workspace._Water:Destroy()
end)

ReedemAllCodes = MiscPage:CreateButton("Reedem All Codes", "Reedems All Active Codes", function()
    local A_1 = "CrazyUpdate2"
    local Event = game:GetService("ReplicatedStorage").RedeemCode
    Event:InvokeServer(A_1)

    local A_1 = "WOW1MVisits"
    local Event = game:GetService("ReplicatedStorage").RedeemCode
    Event:InvokeServer(A_1)

    local A_1 = "Thx1KLikes"
    local Event = game:GetService("ReplicatedStorage").RedeemCode
    Event:InvokeServer(A_1)
end)

local BoxesPage = Tab:CreateFrame("Boxes")

FreeEasyBox = MiscPage:CreateButton("Free Easy Box", "Opens An Easy Box For Free", function()
    local A_1 = 
    {
        ["Price"] = 0, 
        ["Type"] = "Coins", 
        ["Name"] = "Easy Box"
    }
    local Event = game:GetService("ReplicatedStorage").TankEvent
    Event:FireServer(A_1)
end)

FreeNormalBox = MiscPage:CreateButton("Free Normal Box", "Opens A Normal Box For Free", function()
    local A_1 = 
    {
        ["Price"] = 0, 
        ["Type"] = "Coins", 
        ["Name"] = "Normal Box"
    }
    local Event = game:GetService("ReplicatedStorage").TankEvent
    Event:FireServer(A_1)
end)

FreeHalloweenBox = MiscPage:CreateButton("Free Halloween Box", "Opens A Halloween Box For Free", function()
    local A_1 = 
    {
        ["Price"] = 0, 
        ["Type"] = "Coins", 
        ["Name"] = "Halloween Box"
    }
    local Event = game:GetService("ReplicatedStorage").TankEvent
    Event:FireServer(A_1)
end)

local TanksPage = Tab:CreateFrame("Tanks")

GetTank = TanksPage:CreateBox("Get Tank", 10044538000, function(tank)
    local A_1 = 
    {
        ["Tank"] = tank
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)
end)

GetAllTanks = TanksPage:CreateButton("Get All Tanks", "Gives You All The Tanks In The Game", function()
    local A_1 = 
    {
        ["Tank"] = "Rusted"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Broken"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Pumpkin"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Candy Corn"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Steel"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Industrious"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Phantom"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Wood"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Glass"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Skeleton"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Golden"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Ruby"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Poisonous"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Lava"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Acid"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Undead"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Blood"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Spectral"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Ancient"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Spirit"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Grass"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Dirt"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Crystal"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Bone"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Copper"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Relic"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Saphire"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Springs"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Sandswept"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Ignis"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Corrupted"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Gradient"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Water"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Stone"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Burnt"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Iron"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Cactus"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Savannah"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Brick"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Moon"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)

    local A_1 = 
    {
        ["Tank"] = "Chasm"
    }
    local Event = game:GetService("ReplicatedStorage").TankItemEvent
    Event:FireServer(A_1)
end)

local GearsPage = Tab:CreateFrame("Gears")

