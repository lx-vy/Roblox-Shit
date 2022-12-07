--[[
─────────────────────────────────────────────────────────────────────────────────────────────────────────────
─██████████████─██████████████─██████████████─██████████████─██████████████────██████──██████─██████████████─
─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██────██░░██──██░░██─██░░░░░░░░░░██─
─██████░░██████─██░░██████░░██─██░░██████████─██░░██████████─██████████░░██────██░░██──██░░██─██████████░░██─
─────██░░██─────██░░██──██░░██─██░░██─────────██░░██─────────────────██░░██────██░░██──██░░██─────────██░░██─
─────██░░██─────██░░██──██░░██─██░░██████████─██░░██████████─██████████░░██────██░░██──██░░██─██████████░░██─
─────██░░██─────██░░██──██░░██─██░░░░░░░░░░██─██░░░░░░░░░░██─██░░░░░░░░░░██────██░░██──██░░██─██░░░░░░░░░░██─
─────██░░██─────██░░██──██░░██─██░░██████████─██░░██████████─██░░██████████────██░░██──██░░██─██░░██████████─
─────██░░██─────██░░██──██░░██─██░░██─────────██░░██─────────██░░██────────────██░░░░██░░░░██─██░░██─────────
─────██░░██─────██░░██████░░██─██░░██─────────██░░██████████─██░░██████████────████░░░░░░████─██░░██████████─
─────██░░██─────██░░░░░░░░░░██─██░░██─────────██░░░░░░░░░░██─██░░░░░░░░░░██──────████░░████───██░░░░░░░░░░██─
─────██████─────██████████████─██████─────────██████████████─██████████████────────██████─────██████████████─
─────────────────────────────────────────────────────────────────────────────────────────────────────────────
]]--

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "TOFE2 v2 | Lxvy#2069",
	LoadingTitle = "TOFE2_v2",
	LoadingSubtitle = "by Lxvy#2069",
	ConfigurationSaving = {
		Enabled = false,
		FolderName = _,
		FileName = ""
	},
        Discord = {
        	Enabled = false,
        	Invite = "",
        	RememberJoins = false
        },
	KeySystem = false,
	KeySettings = {
		Title = "",
		Subtitle = "",
		Note = "",
		FileName = "",
		SaveKey = false,
		GrabKeyFromSite = false,
		Key = ""
	}
})

local HomeTab = Window:CreateTab("Home", 7072717697)

local NotesSection = HomeTab:CreateSection("Notes")

local Note1Label = HomeTab:CreateLabel("Note: Boxes, mutators, gears and boosts are free")

local Note2Label = HomeTab:CreateLabel("Note: Halloween Tank and Spooky mutator cannot be purchased from the shop")

local HomeSection = HomeTab:CreateSection("Home")

local AntiCheatButton = HomeTab:CreateButton({
	Name = "Anti-Cheat Bypass",
	Callback = function()
		if game:GetService("StarterPlayer").StarterCharacterScripts["Anti-Exploits"]:FindFirstChild("Anti-Exploits") ~= nil then
			game:GetService("StarterPlayer").StarterCharacterScripts["Anti-Exploits"]:Destroy()
		end
	end,
})

local TPEndButton = HomeTab:CreateButton({
	Name = "Teleport To The End",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Storage.End.WinBrick.CFrame
	end,
})

local FloodSection = HomeTab:CreateSection("Flood")

local RemoveFloodButton = HomeTab:CreateButton({
	Name = "Remove Flood",
	Callback = function()
		if workspace:FindFirstChild("_Water") ~= nil then
			game.Workspace._Water:Destroy()
		end
	end,
})

local FloodLoop = false

local LoopRemoveFloodToggle = HomeTab:CreateToggle({
	Name = "Loop Remove Flood",
	CurrentValue = false,
	Flag = "",
	Callback = function(FloodToggleValue)
		FloodLoop = not FloodLoop
		if FloodLoop then
			repeat wait(0.1)
				for i = 1,1 do
					if workspace:FindFirstChild("_Water") ~= nil then
						game.Workspace._Water:Destroy()
					end
				end
			until not FloodLoop
		end
	end,
})

local CodesSection = HomeTab:CreateSection("Codes")

local CodesDropdown = HomeTab:CreateDropdown({
	Name = "Redeem Code",
	Options = {"CrazyUpdate2","WOW1MVisits","Thx1KLikes"},
	CurrentOption = "CrazyUpdate2",
	Flag = "",
	Callback = function(CodesDropdownValue)
		if CodesDropDownValue ~= "Select Code" then
			local A_1 = CodesDropDownValue
			local Event = game:GetService("ReplicatedStorage").RedeemCode
			Event:InvokeServer(A_1)
		end
	end,
})

local RedeemAllCodesButton = HomeTab:CreateButton({
	Name = "Redeem All Codes",
	Callback = function()
		local A_1 = "CrazyUpdate2"
		local Event = game:GetService("ReplicatedStorage").RedeemCode
		Event:InvokeServer(A_1)
	
		local A_1 = "WOW1MVisits"
		local Event = game:GetService("ReplicatedStorage").RedeemCode
		Event:InvokeServer(A_1)
	
		local A_1 = "Thx1KLikes"
		local Event = game:GetService("ReplicatedStorage").RedeemCode
		Event:InvokeServer(A_1)
	end,
})

local BoxesTab = Window:CreateTab("Boxes", 7072719866)

local EasySection = BoxesTab:CreateSection("Easy Boxes")

local EasyButton = BoxesTab:CreateButton({
	Name = "Open Easy Box",
	Callback = function()
		local args = {
			[1] = {
				["Price"] = 0,
				["Type"] = "Coins",
				["Name"] = "Easy Box"
			}
		}
		game:GetService("ReplicatedStorage").TankEvent:FireServer(unpack(args))
	end,
})

local EasyBoxDelay = 1

local EasySlider = BoxesTab:CreateSlider({
	Name = "Loop Open Delay (Seconds)",
	Range = {1, 10},
	Increment = 1,
	Suffix = "Seconds",
	CurrentValue = 1,
	Flag = "",
	Callback = function(EasyBoxSliderValue)
		EasyBoxDelay = EasyBoxSliderValue
	end,
})

local EasyBoxLoop = false

local EasyToggle = BoxesTab:CreateToggle({
	Name = "Loop Open Easy Boxes",
	CurrentValue = false,
	Flag = "",
	Callback = function(EasyBoxToggleValue)
		EasyBoxLoop = not EasyBoxLoop
		if EasyBoxLoop then
			repeat wait()
				for i = 1,1 do
					local args = {
						[1] = {
							["Price"] = 0,
							["Type"] = "Coins",
							["Name"] = "Easy Box"
						}
					}
					game:GetService("ReplicatedStorage").TankEvent:FireServer(unpack(args))
					wait(EasyBoxDelay)
				end
			until not EasyBoxLoop
		end
	end,
})

local NormalSection = BoxesTab:CreateSection("Normal Boxes")

local NormalButton = BoxesTab:CreateButton({
	Name = "Open Normal Box",
	Callback = function()
		local args = {
			[1] = {
				["Price"] = 0,
				["Type"] = "Coins",
				["Name"] = "Normal Box"
			}
		}
		game:GetService("ReplicatedStorage").TankEvent:FireServer(unpack(args))
	end,
})

local NormalBoxDelay = 1

local NormalSlider = BoxesTab:CreateSlider({
	Name = "Loop Open Delay (Seconds)",
	Range = {1, 10},
	Increment = 1,
	Suffix = "Seconds",
	CurrentValue = 1,
	Flag = "",
	Callback = function(NormalBoxSliderValue)
		NormalBoxDelay = NormalBoxSliderValue
	end,
})

local NormalBoxLoop = false

local NormalToggle = BoxesTab:CreateToggle({
	Name = "Loop Open Normal Boxes",
	CurrentValue = false,
	Flag = "",
	Callback = function(NormalBoxToggleValue)
		NormalBoxLoop = not NormalBoxLoop
		if NormalBoxLoop then
			repeat wait()
				for i = 1,1 do
					local args = {
						[1] = {
							["Price"] = 0,
							["Type"] = "Coins",
							["Name"] = "Normal Box"
						}
					}
					game:GetService("ReplicatedStorage").TankEvent:FireServer(unpack(args))
					wait(NormalBoxDelay)
				end
			until not NormalBoxLoop
		end
	end,
})

local HalloweenSection = BoxesTab:CreateSection("Halloween Boxes")

local HalloweenButton = BoxesTab:CreateButton({
	Name = "Open Halloween Box",
	Callback = function()
		local args = {
			[1] = {
				["Price"] = 0,
				["Type"] = "Coins",
				["Name"] = "Halloween Box"
			}
		}
		game:GetService("ReplicatedStorage").TankEvent:FireServer(unpack(args))
	end,
})

local HalloweenBoxDelay = 1

local HalloweenSlider = BoxesTab:CreateSlider({
	Name = "Loop Open Delay (Seconds)",
	Range = {1, 10},
	Increment = 1,
	Suffix = "Seconds",
	CurrentValue = 1,
	Flag = "",
	Callback = function(HalloweenSliderValue)
		HalloweenBoxDelay = HalloweenSliderValue
	end,
})

local HalloweenBoxLoop = false

local HalloweenToggle = BoxesTab:CreateToggle({
	Name = "Loop Open Halloween Boxes",
	CurrentValue = false,
	Flag = "",
	Callback = function(HalloweenToggleValue)
		HalloweenBoxLoop = not HalloweenBoxLoop
		if HalloweenBoxLoop then
			repeat wait()
				for i = 1,1 do
					local args = {
						[1] = {
							["Price"] = 0,
							["Type"] = "Coins",
							["Name"] = "Halloween Box"
						}
					}
					game:GetService("ReplicatedStorage").TankEvent:FireServer(unpack(args))
					wait(HalloweenBoxDelay)
				end
			until not HalloweenBoxLoop
		end
	end,
})

local MutatorsTab = Window:CreateTab("Mutators", 7072707021)

local MutatorsSection = MutatorsTab:CreateSection("Mutators")

local DoubleJump = false

local DoubleJumpToggle = MutatorsTab:CreateToggle({
	Name = "Double Jump",
	CurrentValue = false,
	Flag = "",
	Callback = function(DoubleJumpValue)
		if DoubleJumpValue == true then
			DoubleJump = true
		elseif DoubleJumpValue == false then
			DoubleJump = false
		end
	end,
})

local Spooky = false

local SpookyToggle = MutatorsTab:CreateToggle({
	Name = "Spooky",
	CurrentValue = false,
	Flag = "",
	Callback = function(SpookyValue)
		if SpookyValue == true then
			Spooky = true
		elseif SpookyValue == false then
			Spooky = false
		end
	end,
})

local FasterFlood = false

local FasterFloodToggle = MutatorsTab:CreateToggle({
	Name = "Faster Flood",
	CurrentValue = false,
	Flag = "",
	Callback = function(FasterFloodValue)
		if FasterFloodValue == true then
			FasterFlood = true
		elseif FasterFloodValue == false then
			FasterFlood = false
		end
	end,
})

local BunnyHop = false

local BunnyHopToggle = MutatorsTab:CreateToggle({
	Name = "Bunny Hop",
	CurrentValue = false,
	Flag = "",
	Callback = function(BunnyHopValue)
		if BunnyHopValue == true then
			BunnyHop = true
		elseif BunnyHopValue == false then
			BunnyHop = false
		end
	end,
})

local Lengthen = false

local LengthenToggle = MutatorsTab:CreateToggle({
	Name = "Lengthen",
	CurrentValue = false,
	Flag = "",
	Callback = function(LengthenValue)
		if LengthenValue == true then
			Lengthen = true
		elseif LengthenValue == false then
			Lengthen = false
		end
	end,
})


local Group = false

local GroupToggle = MutatorsTab:CreateToggle({
	Name = "Group",
	CurrentValue = false,
	Flag = "",
	Callback = function(GroupValue)
		if GroupValue == true then
			Group = true
		elseif GroupValue == false then
			Group = false
		end
	end,
})


local Fog = false

local FogToggle = MutatorsTab:CreateToggle({
	Name = "Fog",
	CurrentValue = false,
	Flag = "",
	Callback = function(FogValue)
		if FogValue == true then
			Fog = true
		elseif FogValue == false then
			Fog = false
		end
	end,
})


local Negative = false

local NegativeToggle = MutatorsTab:CreateToggle({
	Name = "Negative",
	CurrentValue = false,
	Flag = "",
	Callback = function(NegativeValue)
		if NegativeValue == true then
			Negative = true
		elseif NegativeValue == false then
			Negative = false
		end
	end,
})


local Void = false

local VoidToggle = MutatorsTab:CreateToggle({
	Name = "Void",
	CurrentValue = false,
	Flag = "",
	Callback = function(VoidValue)
		if VoidValue == true then
			Void = true
		elseif VoidValue == false then
			Void = false
		end
	end,
})

local HighSpeed = false

local HighSpeedToggle = MutatorsTab:CreateToggle({
	Name = "High Speed",
	CurrentValue = false,
	Flag = "",
	Callback = function(HighSpeedValue)
		if HighSpeedValue == true then
			HighSpeed = true
		elseif HighSpeedValue == false then
			HighSpeed = false
		end
	end,
})

local AirTank = false

local AirTankToggle = MutatorsTab:CreateToggle({
	Name = "Air Tank",
	CurrentValue = false,
	Flag = "",
	Callback = function(AirTankValue)
		if AirTankValue == true then
			AirTank = true
		elseif AirTankValue == false then
			AirTank = false
		end
	end,
})

local ExtraTime = false

local ExtraTimeToggle = MutatorsTab:CreateToggle({
	Name = "Extra Time",
	CurrentValue = false,
	Flag = "",
	Callback = function(ExtraTimeValue)
		if ExtraTimeValue == true then
			ExtraTime = true
		elseif ExtraTimeValue == false then
			ExtraTime = false
		end
	end,
})

local LowGravity = false

local LowGravityToggle = MutatorsTab:CreateToggle({
	Name = "Low Gravity",
	CurrentValue = false,
	Flag = "",
	Callback = function(LowGravityValue)
		if LowGravityValue == true then
			LowGravity = true
		elseif LowGravityValue == false then
			LowGravity = false
		end
	end,
})

local BuyMutatorsButton = MutatorsTab:CreateButton({
	Name = "Buy Mutators",
	Callback = function()
		if DoubleJump then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Double Jump"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			
			if Spooky then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Spooky"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if FasterFlood then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Faster Flood"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if BunnyHop then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Bunny Hop"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if Lengthen then
				local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Lengthen"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if Group then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Group"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if Fog then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Fog"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if Negative then
				local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Negative"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if Void then
				local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Void"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if HighSpeed then
				local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "High Speed"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if AirTank then
				local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Air Tank"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if ExtraTime then
				local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Extra Time"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if LowGravity then
				local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Gems", 
				["Name"] = "Low Gravity"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
	end,
})

local GearsTab = Window:CreateTab("Gears", 7072723685)

local GearsSection = GearsTab:CreateSection("Gears")

local SpeedCoil = false

local SpeedCoilToggle = GearsTab:CreateToggle({
	Name = "Speed Coil",
	CurrentValue = false,
	Flag = "",
	Callback = function(SpeedCoilValue)
		if SpeedCoilValue == true then
			SpeedCoil = true
		elseif SpeedCoilValue == false then
			SpeedCoil = false
		end
	end,
})

local GravityCoil = false

local GravityCoilToggle = GearsTab:CreateToggle({
	Name = "Gravity Coil",
	CurrentValue = false,
	Flag = "",
	Callback = function(GravityCoilValue)
		if GravityCoilValue == true then
			GravityCoil = true
		elseif GravityCoilValue == false then
			GravityCoil = false
		end
	end,
})

local OxygenCoil = false

local OxygenCoilToggle = GearsTab:CreateToggle({
	Name = "Oxygen Coil",
	CurrentValue = false,
	Flag = "",
	Callback = function(OxygenCoilValue)
		if OxygenCoilValue == true then
			OxygenCoil = true
		elseif OxygenCoilValue == false then
			OxygenCoil = false
		end
	end,
})

local FusionCoil = false

local FusionCoilToggle = GearsTab:CreateToggle({
	Name = "Fusion Coil",
	CurrentValue = false,
	Flag = "",
	Callback = function(FusionCoilValue)
		if FusionCoilValue == true then
			FusionCoil = true
		elseif FusionCoilValue == false then
			FusionCoil = false
		end
	end,
})

local Trowel = false

local TrowelToggle = GearsTab:CreateToggle({
	Name = "Trowel",
	CurrentValue = false,
	Flag = "",
	Callback = function(TrowelValue)
		if TrowelValue == true then
			Trowel = true
		elseif TrowelValue == false then
			Trowel = false
		end
	end,
})

local Hourglass = false

local HourglassToggle = GearsTab:CreateToggle({
	Name = "Hourglass",
	CurrentValue = false,
	Flag = "",
	Callback = function(HourglassValue)
		if HourglassValue == true then
			Hourglass = true
		elseif HourglassValue == false then
			Hourglass = false
		end
	end,
})

local BuyGearsButton = GearsTab:CreateButton({
	Name = "Buy Gears",
	Callback = function()
		if SpeedCoil then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Coins", 
				["Name"] = "Speed Coil"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if GravityCoil then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Coins", 
				["Name"] = "Gravity Coil"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if OxygenCoil then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Coins", 
				["Name"] = "Oxygen Coil"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if FusionCoil then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Coins", 
				["Name"] = "Fusion Coil"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if Trowel then
				local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Coins", 
				["Name"] = "Trowel"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
			if Hourglass then
			local A_1 = 
			{
				["Price"] = 0, 
				["Type"] = "Coins", 
				["Name"] = "Hourglass"
			}
			local Event = game:GetService("ReplicatedStorage").MutatorEvent
			Event:FireServer(A_1)
		end
	end,
})

local CurrencyTab = Window:CreateTab("Currency", 7072715646)

local BoxesMethodSection = CurrencyTab:CreateSection("Boxes Method")

local BoxesCurrencyAmount = 0

local BoxesMethodInput = CurrencyTab:CreateInput({
	Name = "Currency Amount",
	PlaceholderText = "Input Currency Amount",
	RemoveTextAfterFocusLost = false,
	Callback = function(BoxesMethodInputValue)
		BoxesCurrencyAmount = BoxesMethodInputValue
	end,
})

local BoxesCurrencyType = "Coins"

local BoxesMethodDropdown = CurrencyTab:CreateDropdown({
	Name = "Currency Type",
	Options = {"Coins","Gems"},
	CurrentOption = "Coins",
	Flag = "",
	Callback = function(BoxesMethodDropdownValue)
		BoxesCurrencyType = BoxesMethodDropdownValue
	end,
})

local BoxesAddButton = CurrencyTab:CreateButton({
	Name = "Add Currency",
	Callback = function()
		local args = {
			[1] = {
				["Price"] = -BoxesCurrencyAmount,
				["Type"] = BoxesCurrencyType,
				["Name"] = "Easy Box"
			}
		}
		game:GetService("ReplicatedStorage").TankEvent:FireServer(unpack(args))
	end,
})

local BoostMethodSection = CurrencyTab:CreateSection("Boost Method")

local BoostCurrencyAmount

local BoostMethodInput = CurrencyTab:CreateInput({
	Name = "Currency Amount",
	PlaceholderText = "Input Currency Amount",
	RemoveTextAfterFocusLost = false,
	Callback = function(BoostMethodInputValue)
		BoostCurrencyAmount = BoostMethodInputValue
	end,
})

local BoostMethodLabel = CurrencyTab:CreateLabel("Currency Type: Only Gems")

local BoostAddButton = CurrencyTab:CreateButton({
	Name = "Add Currency",
	Callback = function()
		local args = {
			[1] = {
				["Price"] = -BoostCurrencyAmount
			}
		}
		game:GetService("ReplicatedStorage").IntensityEvent:FireServer(unpack(args))
	end,
})

local BoostTab = Window:CreateTab("Boost", 7072727506)

local BoostSection = BoostTab:CreateSection("Boost Intensity")

local BoostButton = BoostTab:CreateButton({
	Name = "Boost",
	Callback = function()
		local args = {
			[1] = {
				["Price"] = 0
			}
		}
		game:GetService("ReplicatedStorage").IntensityEvent:FireServer(unpack(args))
	end,
})

local BoostDelay = 1

local BoostSlider = BoostTab:CreateSlider({
	Name = "Loop Boost Delay (Seconds)",
	Range = {0.1, 10},
	Increment = 1,
	Suffix = "Seconds",
	CurrentValue = 1,
	Flag = "",
	Callback = function(BoostMethodSliderValue)
		BoostDelay = BoostMethodSliderValue
	end,
})

local BoostLoop = false

local LoopBoostToggle = BoostTab:CreateToggle({
	Name = "Loop Boost",
	CurrentValue = false,
	Flag = "",
	Callback = function(BoostMethodToggleValue)
		BoostLoop = not BoostLoop
		if BoostLoop then
			repeat wait(BoostDelay)
				for i = 1,1 do
					local args = {
						[1] = {
							["Price"] = 0
						}
					}
					game:GetService("ReplicatedStorage").IntensityEvent:FireServer(unpack(args))
				end
			until not BoostLoop
		end
	end,
})

local TrollTab = Window:CreateTab("Troll", 7072720870)

local TrollNote1Label = TrollTab:CreateLabel("Note: This script will not let a new round start, therefore players will not be able to play")

local TrollNote2Label = TrollTab:CreateLabel("Note: Rejoin to deactivate")

local TrollNote3Label = TrollTab:CreateLabel("Note: If you get max time message, just do it again.")

local HTUSection = TrollTab:CreateSection("How To Use")

local Step1Label = TrollTab:CreateLabel("Step 1: Click “Glitch Server” button")

local Step2Label = TrollTab:CreateLabel("Step 2: Wait for a new round to start")

local Step3Label = TrollTab:CreateLabel("Step 3: When you are in the tower, reset your character")

local Step4Label = TrollTab:CreateLabel("Step 4: Wait for everyone to die")

local GlitchSection = TrollTab:CreateSection("Glitch Server")

local GlitchServerButton = TrollTab:CreateButton({
	Name = "Glitch Server",
	Callback = function()
		game.ReplicatedStorage.DeathEvent:Destroy()
	end,
})

local FixServerButton = TrollTab:CreateButton({
	Name = "Fix Server (Rejoin)",
	Callback = function()
		local TeleportService = game:GetService("TeleportService")
		local Player = game:GetService("Players").LocalPlayer
		TeleportService:Teleport(game.PlaceId, Player)
	end,
})