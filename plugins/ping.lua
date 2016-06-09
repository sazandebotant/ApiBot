do
--Coded By @kiava
local function run(msg, matches)
    local sudo = 174997972,147237496
    if matches[1] == 'ping' and is_owner(msg) then
        local text = [[

I am online ͡° ͜ʖ ͡°
-------
@kiavaprotection
        ]]

    return text


    else   if matches[1] not is_sudo(msg) then
          return "😒😒😒"


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


