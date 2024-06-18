local UserInputService = game:GetService("UserInputService")

local function onInputBegan(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift then
        local character = game.Players.LocalPlayer.Character
        if character then
            character.Humanoid.WalkSpeed = 50 -- Increase walk speed to simulate sprint
        end
    end
end

local function onInputEnded(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift then
        local character = game.Players.LocalPlayer.Character
        if character then
            character.Humanoid.WalkSpeed = 16 -- Reset walk speed to default
        end
    end
end

UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputEnded:Connect(onInputEnded)
