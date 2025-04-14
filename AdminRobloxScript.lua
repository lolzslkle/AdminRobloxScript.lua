-- GUI หลัก
local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdminFunGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = player:WaitForChild("PlayerGui")

-- เฟรม GUI
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 250, 0, 150)
frame.Position = UDim2.new(0.5, -125, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = screenGui

-- หัว GUI (เครดิต)
local header = Instance.new("TextLabel")
header.Size = UDim2.new(1, 0, 0, 30)
header.Position = UDim2.new(0, 0, 0, 0)
header.BackgroundTransparency = 1
header.Text = "Script made by Kittipop Leeswat"
header.TextColor3 = Color3.fromRGB(0, 255, 0)
header.Font = Enum.Font.SourceSansBold
header.TextScaled = true
header.Parent = frame

-- ปุ่ม Admin
local adminButton = Instance.new("TextButton")
adminButton.Size = UDim2.new(0, 220, 0, 40)
adminButton.Position = UDim2.new(0.5, -110, 0.5, -20)
adminButton.Text = "Admin"
adminButton.TextColor3 = Color3.fromRGB(255, 255, 255)
adminButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
adminButton.Font = Enum.Font.GothamBold
adminButton.TextScaled = true
adminButton.Parent = frame

-- เมื่อกดปุ่ม Admin → ข้อความกระจายทั่วหน้าจอ
adminButton.MouseButton1Click:Connect(function()
	for i = 1, 80 do
		local label = Instance.new("TextLabel")
		label.Size = UDim2.new(0, math.random(150, 300), 0, 50)
		label.Position = UDim2.new(math.random(), -50, math.random(), -25)
		label.Text = "You got hacked lol"
		label.TextColor3 = Color3.fromRGB(255, 0, 0)
		label.TextStrokeTransparency = 0.3
		label.Font = Enum.Font.ArialBold
		label.TextScaled = true
		label.BackgroundTransparency = 1
		label.Parent = screenGui

		game:GetService("Debris"):AddItem(label, 2) -- ลบอัตโนมัติหลัง 2 วิ
		wait(0.03)
	end
end)
