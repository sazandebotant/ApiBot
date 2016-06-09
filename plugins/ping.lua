do
--Coded By @kiava
local function run(msg, matches)
    local SUDO = 174997972,147237496
    if matches[1] == 'ping' and is_owner(msg) then
        local text = [[

I am online ͡° ͜ʖ ͡°
\n
@kiavaprotection
        ]]
 send_document(get_receiver(msg), "/root/antspmbot/data/sticker/Mohammad.webp", ok_cb, false)

    return text


    else  if not is_sudo(msg) then
          return "🔖شما جزء تیم کیاوا نیستید یا کارت شناسایی برای شما صادر نشده است"


   end
      end 
          end 
                
                    

return {
  patterns = {
    "^[!#/][Pp]ing$",
    "^([Pp]ing)$",
    },
  run = run
}
end


