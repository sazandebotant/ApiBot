local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['tag'] then
                tag = data[tostring(msg.to.id)]['settings']['tag']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if tag == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "#(.*)",
    "# (.*)",
    "(.*)#",
    "(.*) #",
    "#"
  },
  run = run
}

