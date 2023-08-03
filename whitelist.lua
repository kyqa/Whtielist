local whitelist = {
    4275381467,
}

function IsUserIdWhitelisted(userId)
    for _, id in ipairs(whitelist) do
        if id == userId then
            return true
        end
    end
    return false
end

-- Get the local player (if this script is being executed on the client side)
local player = game.Players.LocalPlayer
if player then
    local userId = player.UserId
    if IsUserIdWhitelisted(userId) then
        print("Player is whitelisted. Allow access.")
    else
        print("Player is not whitelisted. Kicking...")
        player:Kick("You are not whitelisted on the script!")
    end
end
