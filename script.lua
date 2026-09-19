if syn and syn.write_clipboard then
    syn.write_clipboard("https://discord.gg/5MsGdxM6GC")
elseif setclipboard then
    setclipboard("https://discord.gg/5MsGdxM6GC")
else
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "رابط الديسكورد",
        Text = "https://discord.gg/5MsGdxM6GC",
        Duration = 10
    })
end

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "BlackScreen"
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
screenGui.DisplayOrder = 999999
screenGui.IgnoreGuiInset = true
screenGui.Parent = playerGui

local blackFrame = Instance.new("Frame")
blackFrame.Name = "BlackFrame"
blackFrame.Size = UDim2.new(1, 0, 1, 0)
blackFrame.Position = UDim2.new(0, 0, 0, 0)
blackFrame.BackgroundColor3 = Color3.new(0, 0, 0)
blackFrame.BorderSizePixel = 0
blackFrame.Active = true
blackFrame.Draggable = false
blackFrame.ZIndex = 999999
blackFrame.Parent = screenGui

local mainText = Instance.new("TextLabel")
mainText.Name = "MainText"
mainText.Size = UDim2.new(1, -40, 0.4, 0)
mainText.Position = UDim2.new(0, 20, 0.1, 0)
mainText.BackgroundTransparency = 1
mainText.TextColor3 = Color3.new(1, 1, 1)
mainText.TextScaled = true
mainText.Font = Enum.Font.GothamBold
mainText.ZIndex = 999999
mainText.Parent = blackFrame
mainText.Text = "السكربت في سيرفر الديسكورد"

local linkText = Instance.new("TextLabel")
linkText.Name = "LinkText"
linkText.Size = UDim2.new(1, -40, 0.15, 0)
linkText.Position = UDim2.new(0, 20, 0.55, 0)
linkText.BackgroundTransparency = 1
linkText.TextColor3 = Color3.new(1, 1, 1)
linkText.TextScaled = true
linkText.Font = Enum.Font.GothamBold
linkText.ZIndex = 999999
linkText.Parent = blackFrame
linkText.Text = "تم نسخ رابط السيرفر"

local countdownText = Instance.new("TextLabel")
countdownText.Name = "CountdownText"
countdownText.Size = UDim2.new(1, 0, 0.1, 0)
countdownText.Position = UDim2.new(0, 0, 0.85, 0)
countdownText.BackgroundTransparency = 1
countdownText.TextColor3 = Color3.new(1, 1, 1)
countdownText.TextScaled = true
countdownText.Font = Enum.Font.GothamBold
countdownText.ZIndex = 999999
countdownText.Parent = blackFrame
countdownText.Text = "بعد 10 ثواني الشاشه السوداء بتختفي"

local function startCountdown()
    for i = 10, 1, -1 do
        countdownText.Text = "بعد " .. tostring(i) .. " ثواني الشاشه السوداء بتختفي"
        wait(1)
    end
    screenGui:Destroy()
end

startCountdown()
