-- สร้าง GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdminScriptGUI"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- สร้าง Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 200, 0, 150)
frame.Position = UDim2.new(0.5, -100, 0.5, -75)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.Parent = screenGui

-- สร้างปุ่ม Fly
local flyButton = Instance.new("TextButton")
flyButton.Size = UDim2.new(0, 180, 0, 40)
flyButton.Position = UDim2.new(0, 10, 0, 10)
flyButton.Text = "Fly"
flyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
flyButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
flyButton.Parent = frame

-- สร้างปุ่ม Admin
local adminButton = Instance.new("TextButton")
adminButton.Size = UDim2.new(0, 180, 0, 40)
adminButton.Position = UDim2.new(0, 10, 0, 60)
adminButton.Text = "Admin"
adminButton.TextColor3 = Color3.fromRGB(255, 255, 255)
adminButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
adminButton.Parent = frame

-- สร้างฟังก์ชัน Fly
local isFlying = false
local humanoid = game.Players.LocalPlayer.Character:WaitForChild("Humanoid")

flyButton.MouseButton1Click:Connect(function()
    if isFlying then
        humanoid.PlatformStand = false
        game.Players.LocalPlayer.Character:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, 10, 0))
        isFlying = false
        flyButton.Text = "Fly"
    else
        humanoid.PlatformStand = true
        isFlying = true
        flyButton.Text = "Stop Fly"
    end
end)

-- สร้างฟังก์ชัน Admin
adminButton.MouseButton1Click:Connect(function()
    for i = 1, 50 do
        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(0, 200, 0, 50)
        label.Position = UDim2.new(0.5, -100, 0, 100 + (i * 30))
        label.Text = "You got hacked"
        label.TextColor3 = Color3.fromRGB(0, 255, 0)
        label.BackgroundTransparency = 1
        label.Parent = screenGui
        wait(0.1)
    end
end)
