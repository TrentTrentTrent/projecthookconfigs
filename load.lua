local configloader = {}
configlinks = {
    rage = "https://raw.githubusercontent.com/TrentTrentTrent/projecthookconfigs/main/configs/rage.txt",
    ragenobow = "https://raw.githubusercontent.com/TrentTrentTrent/projecthookconfigs/main/configs/ragenobow.txt"
}
--
function configloader:add(name,link,actualname)
    if configlinks[actualname] ~= nil then
        writefile("projecthook/"..name..".txt",game:HttpGet(configlinks[actualname]))
    end
end
function configloader:delete(name)
    delfile("projecthook/"..name..".txt")
end
return configloader
