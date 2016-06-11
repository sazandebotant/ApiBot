
do

function run(msg, matches)
send_contact(get_receiver(msg), "+639080561083", "Kiava", "bot", ok_cb, false)
end

return {
patterns = {
"^[#/!]share$"

},
run = run
}

end
