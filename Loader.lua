-- Run Pastefy first
local success1, err1 = pcall(function()
    loadstring(game:HttpGet("https://pastefy.app/8JqD2ajb/raw"))()
end)

if not success1 then
    warn("[ERROR] Pastefy script failed:", err1)
else
    print("[SUCCESS] Pastefy script loaded.")
end

-- Run LimitHub second
local success2, err2 = pcall(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/FakeModz/LimitHub/refs/heads/main/LimitHub_Luarmor_E.lua"))()
end)

if not success2 then
    warn("[ERROR] LimitHub script failed:", err2)
else
    print("[SUCCESS] LimitHub script loaded.")
end
