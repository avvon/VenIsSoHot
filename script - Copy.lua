-- main gui
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Cowy Zowy", "Midnight")

--Sections And Tabs
local Auto = Window:NewTab("Auto")
local Auto = Auto:NewSection("Auto")

local Pets = Window:NewTab("Pets")
local Pets = Pets:NewSection("Codes (5 day old acc required)")

local Eggs = Window:NewTab("Eggs")
local Eggs = Eggs:NewSection("Hatching")

--auto bubble button
Auto:NewButton("Auto Bubble", "Automatically blows bubbles", function()
    while wait() do
    local args = {
    [1] = "BlowBubble"
}

game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
end

end)

--Pet Codes
Pets:NewButton("Twitter Dominus", "Claims the code for this pet", function()
    local args = {
    [1] = "RedeemCode",
    [2] = "FreePet"
}

game:GetService("ReplicatedStorage").NetworkRemoteFunction:InvokeServer(unpack(args))

end)
Pets:NewButton("Toy Serpent", "Claims the code for this pet", function()
    local args = {
    [1] = "RedeemCode",
    [2] = "SecretPet"
}

game:GetService("ReplicatedStorage").NetworkRemoteFunction:InvokeServer(unpack(args))

end)
Pets:NewButton("Twitter Doggy", "Claims the code for this pet", function()
    local args = {
    [1] = "RedeemCode",
    [2] = "TwitterRelease"
}

game:GetService("ReplicatedStorage").NetworkRemoteFunction:InvokeServer(unpack(args))

end)

--egg codes 
Pets:NewButton("Spotted Egg 1", "Claims the code for this egg", function()
    local args = {
    [1] = "RedeemCode",
    [2] = "Sircfenner"
}

game:GetService("ReplicatedStorage").NetworkRemoteFunction:InvokeServer(unpack(args))

end)
Pets:NewButton("Spotted Egg 2", "Claims the code for this egg", function()
    local args = {
    [1] = "RedeemCode",
    [2] = "Spotted"
}

game:GetService("ReplicatedStorage").NetworkRemoteFunction:InvokeServer(unpack(args))

end)
Pets:NewButton("Spotted Egg 3", "Claims the code for this egg", function()
    local args = {
    [1] = "RedeemCode",
    [2] = "FreeEgg"
}

game:GetService("ReplicatedStorage").NetworkRemoteFunction:InvokeServer(unpack(args))

end)

-- egg/hatching 
Eggs:NewButton("Auto Hatch (1 Egg At A Time)", "Automatically Hatches Eggs", function()
    while wait() do
    local args = {
    [1] = "PurchaseEgg",
    [2] = "Common Egg"
}

game:GetService("ReplicatedStorage").NetworkRemoteEvent:FireServer(unpack(args))
end

end)