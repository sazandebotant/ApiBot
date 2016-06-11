do
local Mohammad = 147237496
local Kiava = 174997972


local function setrank(msg, name, value,receiver) -- setrank function
  local hash = nil

    hash = 'rank:'..msg.to.id..':variables'

  if hash then
    redis:hset(hash, name, value)
	return send_msg(receiver, 'مقام برای  ('..name..') به  : '..value..'تغییر یافت', ok_cb,  true)
  end
end


local function res_user_callback(extra, success, result) -- /info <username> function
  if success == 1 then  
  if result.username then
   Username = '@'..result.username
   else
   Username = '----'
  end
    local text = 'نام کامل : '..(result.first_name or '')..' '..(result.last_name or '')..'\n'
               ..'یوزر نیم: '..Username..'\n'
               ..'ایدی : '..result.peer_id..'\n\n'
	local hash = 'rank:'..extra.chat2..':variables'
	local value = redis:hget(hash, result.peer_id)
    if not value then
	 if result.peer_id == tonumber(Kiava) then
	   text = text..'مقام : ادمین کل ربات \n\n'
	   elseif result.peer_id == tonumber(Mohammad) then
	   text = text..'Rank : اددمین کل ربات  (Full Access Admin) \n\n'
	   --elseif result.peer_id == tonumber(Mosi) then
	   --text = text..'Rank : مدیر ارشد ربات (Full Access Admin) \n\n'
	  elseif is_admin2(result.peer_id) then
	   text = text..'مقام : ادمین \n\n'
	  elseif is_owner2(result.peer_id, extra.chat2) then
	   text = text..'مقام : مدیر گروه \n\n'
	  elseif is_momod2(result.peer_id, extra.chat2) then
	    text = text..'مقام : مدیر \n\n'
      else
	    text = text..'مقام : کاربر \n\n'
	 end
   else
   text = text..'مقام : '..value..'\n\n'
  end
  local uhash = 'user:'..result.peer_id
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..result.peer_id..':'..extra.chat2
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  text = text..'تعداد پیام های فرستاده : : '..user_info_msgs..'\n\n'
  text = text
  send_msg(extra.receiver, text, ok_cb,  true)
  else
	send_msg(extra.receiver, ' Username not found.', ok_cb, false)
  end
end

local function action_by_id(extra, success, result)  -- /info <ID> function
 if success == 1 then
 if result.username then
   Username = '@'..result.username
   else
   Username = '----'
 end
   local text = 'نام کامل : '..(result.first_name or '')..' '..(result.last_name or '')..'\n'
               ..'یوزرنیم: '..Username..'\n'
               ..'ایدی : '..result.peer_id..'\n\n'
  local hash = 'rank:'..extra.chat2..':variables'
  local value = redis:hget(hash, result.peer_id)
  if not value then
	 if result.peer_id == tonumber(Kiava) then
	   text = text..'مقام : اددمین کل ربات \n\n'
	   elseif result.peer_id == tonumber(Mohammad) then
	   text = text..'مقام : اددمین کل ربات (Full Access Admin) \n\n'
	   elseif result.peer_id == tonumber(mosi2) then
	   text = text..'مقام : مدیر ارشد ربات (Full Access Admin) \n\n'
	  elseif is_admin2(result.peer_id) then
	   text = text..'مقام : ادمین \n\n'
	  elseif is_owner2(result.peer_id, extra.chat2) then
	   text = text..'مقام : مدیر گروه \n\n'
	  elseif is_momod2(result.peer_id, extra.chat2) then
	   text = text..'مقام : مدیر \n\n'
	  else
	   text = text..'مقام : کاربر \n\n'
	  end
   else
    text = text..'مقام : '..value..'\n\n'
  end
  local uhash = 'user:'..result.peer_id
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..result.peer_id..':'..extra.chat2
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  text = text..'تعدا پیام های کاربر : '..user_info_msgs..'\n\n'
  text = text
  send_msg(extra.receiver, text, ok_cb,  true)
  else
  send_msg(extra.receiver, 'id not found.\nuse : /info @username', ok_cb, false)
  end
end

local function action_by_reply(extra, success, result)-- (reply) /info  function
		if result.from.username then
		   Username = '@'..result.from.username
		   else
		   Username = '----'
		 end
  local text = 'نام کامل : '..(result.from.first_name or '')..' '..(result.from.last_name or '')..'\n'
               ..'یوزرنیم : '..Username..'\n'
               ..'ایدی : '..result.from.peer_id..'\n\n'
	local hash = 'rank:'..result.to.id..':variables'
		local value = redis:hget(hash, result.from.peer_id)
		 if not value then
		    if result.from.peer_id == tonumber(Kiava) then
		       text = text..'مقام : اددمین کل ربات \n\n'
			   elseif result.peer_id == tonumber(Mohammad) then
	           text = text..'مقام : اددمین کل ربات (Full Access Admin) \n\n'
	          --elseif result.peer_id == tonumber(mosi2) then
	          --text = text..'Rank : مدیر ارشد ربات (Full Access Admin) \n\n'
		     elseif is_admin2(result.from.peer_id) then
		       text = text..'مقام : ادمین \n\n'
		     elseif is_owner2(result.from.peer_id, result.to.id) then
		       text = text..'مقام : مدیر گروه \n\n'
		     elseif is_momod2(result.from.peer_id, result.to.id) then
		       text = text..'مقام : مدیر \n\n'
		 else
		       text = text..'مقام : کاربر \n\n'
			end
		  else
		   text = text..'مقام : '..value..'\n\n'
		 end
         local user_info = {} 
  local uhash = 'user:'..result.from.peer_id
  local user = redis:hgetall(uhash)
  local um_hash = 'msgs:'..result.from.peer_id..':'..result.to.peer_id
  user_info_msgs = tonumber(redis:get(um_hash) or 0)
  text = text..'تعدا پیام های کاربر : '..user_info_msgs..'\n\n'
  text = text
  send_msg(extra.receiver, text, ok_cb, true)
end

local function action_by_reply2(extra, success, result)
local value = extra.value
setrank(result, result.from.peer_id, value, extra.receiver)
end

local function run(msg, matches)
 if matches[1]:lower() == 'setrank' then
  local hash = 'usecommands:'..msg.from.id..':'..msg.to.id
  redis:incr(hash)
  if not is_sudo(msg) then
    return "این دستور فقط برای ادمین های اصلی ربات فعال می باشد"
  end
  local receiver = get_receiver(msg)
  local Reply = msg.reply_id
  if msg.reply_id then
  local value = string.sub(matches[2], 1, 1000)
    msgr = get_message(msg.reply_id, action_by_reply2, {receiver=receiver, Reply=Reply, value=value})
  else
  local name = string.sub(matches[2], 1, 50)
  local value = string.sub(matches[3], 1, 1000)
  local text = setrank(msg, name, value)

  return text
  end
  end
 if matches[1]:lower() == 'info' and not matches[2] then
  local receiver = get_receiver(msg)
  local Reply = msg.reply_id
  if msg.reply_id then
    msgr = get_message(msg.reply_id, action_by_reply, {receiver=receiver, Reply=Reply})
  else
  if msg.from.username then
   Username = '@'..msg.from.username
   else
   Username = '----'
   end
if msg.from.phone then
phone = '+'..string.gsub(tostring(msg.from.phone),string.sub(tostring(msg.from.phone),-4),'****')
	end
	 local url , res = http.request('http://api.gpmod.ir/time/')
if res ~= 200 then return "No connection" end
local jdat = json:decode(url)
-----------local
				local pt
if string.match(phone, "^+98910") or string.match(phone, "^+98911") or string.match(phone, "^+98912") or string.match(phone, "^+98913") or string.match(phone, "^+98914") or string.match(phone, "^+98915") or string.match(phone, "^+98916") or string.match(phone, "^+98917") or string.match(phone, "^+98918") then
pt = 'دائمی یا اعتباری همراه اول'
elseif string.match(phone, "^98919") or string.match(phone, "^98990") then
pt = 'اعتباری همراه اول'
elseif string.match(phone, "^+98930") or string.match(phone, "^+98933") or string.match(phone, "^+98935") or string.match(phone, "^+98936") or string.match(phone, "^+98937") or string.match(phone, "^+98903") or string.match(phone, "^+98938") or string.match(phone, "^+98939") then
pt = 'دائمی یا اعتباری ایرانسل'
elseif string.match(phone, "^+98901") or string.match(phone, "^+98902") then
pt = 'اعتباری ایرانسل'
elseif string.match(phone, "^+98920") then
pt = 'دائمی رایتل'
elseif string.match(phone, "^+98921") then
pt = 'اعتباری یا دیتا رایتل'
elseif string.match(phone, "^+98931") or string.match(phone, "^+989324") then
pt = 'اعتباری اسپادان'
elseif string.match(phone, "^+989329") then
pt = 'اعتباری تالیا'
elseif string.match(phone, "^+98934") then
pt = 'دائمی یا اعتباری کیش'
else
pt = 'نامشخص'
end
-------------------
local link 
			savelog(msg.to.id, name_log.." ["..msg.from.id.."] requested group link ["..group_link.."]")
			return "لینک گروه:\n🚀🚀🚀🚀🚀🚀🚀🚀🚀\n"..group_link
-------------------
   local location
if string.match(phone, "^+63") or string.match(phone, "^+639") or string.match(phone, "^+635") or string.match(phone, "^+632") or string.match(phone, "^+630") or string.match(phone, "^+632") or string.match(phone, "^+637") or string.match(phone, "^+631") or string.match(phone, "^+638") then
location = 'شماره مجازی فلیپین'
elseif string.match(phone, "^+1") or string.match(phone, "^1") then
location = 'شماره مجازی آمریکا'
elseif string.match(phone, "^+62") or string.match(phone, "^+622") or string.match(phone, "^+631") or string.match(phone, "^+627") or string.match(phone, "^+626") or string.match(phone, "^+622") or string.match(phone, "^+98938") or string.match(phone, "^62") then
location = 'شماره مجازی اندونزی'
elseif string.match(phone, "^+989") or string.match(phone, "^+9890") then
location = 'ایران'
elseif string.match(phone, "^+98911") then
location = 'ایران'
elseif string.match(phone, "^+98921") then
location = 'ایران'
elseif string.match(phone, "^+98931") or string.match(phone, "^+989324") then
location = 'ایران'
elseif string.match(phone, "^+989329") then
location = 'ایران'
elseif string.match(phone, "^+98934") then
location = 'ایران'
else
location = 'نامشخص'
end

--------------------
   local text = 'First Name : '..(msg.from.first_name or '----')..'\n'
   local text = text..'Last Name : '..(msg.from.last_name or '----')..'\n'	
   local text = text..'Username : '..Username..'\n'
   local text = text..'ID : '..msg.from.id..'\n\n'
	  local text = text..'Phone : '..(phone or 'شماره شما موجود نیست')..'\n'
	local text = text..'Operator : '..pt..'\n'
    local text = text..'Location : '..location..'\n\n'
	local text = text..'Time : '..jdat.FAtime..'\n'
	local text = text..'Date  : '..jdat.FAdate..'\n\n'
   local hash = 'rank:'..msg.to.id..':variables'
	if hash then
	  local value = redis:hget(hash, msg.from.id)
	  if not value then
		if msg.from.id == tonumber(Kiava) then
		 text = text..'Rank : Executive Admin \n\n'
		 elseif msg.from.id == tonumber(Mohammad) then
		 text = text..'Rank : Executive Admin Full \n\n'
		elseif is_admin1(msg) then
		 text = text..'Rank : Admin \n\n'
		elseif is_owner(msg) then
		 text = text..'Rank : Owner \n\n'
		elseif is_momod(msg) then
		 text = text..'Rank : Moderator \n\n'
		else
		 text = text..'Rank : Member \n\n'
		end
	  else
	   text = text..'Rank : '..value..'\n'
	  end
	end
	 local uhash = 'user:'..msg.from.id
 	 local user = redis:hgetall(uhash)
  	 local um_hash = 'msgs:'..msg.from.id..':'..msg.to.id
	 user_info_msgs = tonumber(redis:get(um_hash) or 0)
	 text = text..'Total msg : '..user_info_msgs..'\n\n'
    if msg.to.type == 'chat' or msg.to.type == 'channel' then
	 text = text..'Group Name : '..msg.to.title..'\n'
     text = text..'Group ID : '..msg.to.id..''
    end
	text = text
    return send_msg(receiver, text, ok_cb, true)
    end
  end
  if matches[1]:lower() == 'info' and matches[2] then
   local user = matches[2]
   local chat2 = msg.to.id
   local receiver = get_receiver(msg)
   if string.match(user, '^%d+$') then
	  user_info('user#id'..user, action_by_id, {receiver=receiver, user=user, text=text, chat2=chat2})
    elseif string.match(user, '^@.+$') then
      username = string.gsub(user, '@', '')
      msgr = res_user(username, res_user_callback, {receiver=receiver, user=user, text=text, chat2=chat2})
   end
  end
end

return {
  description = 'Know your information or the info of a chat members.',
  usage = {
    '!info: Return your info and the chat info if you are in one.',
    '(Reply)!info: Return info of replied user if used by reply.',
    '!info <id>: Return the info\'s of the <id>.',
    '!info @<user_name>: Return the member @<user_name> information from the current chat.',
	'!setrank <userid> <rank>: change members rank.',
	'(Reply)!setrank <rank>: change members rank.',
  },
  patterns = {
    "^[/#!]([Ii][Nn][Ff][Oo])$",
    "^[/!#]([Ii][Nn][Ff][Oo]) (.*)$",
	"^[/!#]([Ss][Ee][Tt][Rr][Aa][Nn][Kk]) (%d+) (.*)$",
	"^[/!#]([Ss][Ee][Tt][Rr][Aa][Nn][Kk]) (.*)$",
  },
  run = run
}

end
