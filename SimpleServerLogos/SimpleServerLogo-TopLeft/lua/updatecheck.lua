PerformHttpRequest("https://github.com/qavas/SimpleServerLogo/blob/main/version.txt", function(err, serverVersion, headers)
    local version = "v1.1.0"
    if string.find(serverVersion, version) == nil then
        Wait(120)
        print("^1"..GetCurrentResourceName().."^1 is outdated^7 Find it at ^4github.com/qavas/SimpleServerLogo")
    else
        Wait(120)
        print("\n")
        print("^2"..GetCurrentResourceName().."^2 is on the newest version!")
    end
end)