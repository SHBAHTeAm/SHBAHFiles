local function ChangePhoto(msg)
local text = msg.content_.text_
if ChatType == 'sp' or ChatType == 'gp'  then
if text then 
tdcli_function({ID = "GetUser",user_id_ = msg.sender_user_id_},function(arg,result)
if result.id_ then 
local abbd = DevAbd:get("SHBAHTeAm:Photo"..result.id_)
if not result.profile_photo_ then 
if abbd then 
Dev_Abd(msg.chat_id_, msg.id_, 1, "حذف كل صوره مضروب بوري، 😹💔", 1, 'html')
DevAbd:del("SHBAHTeAm:Photo"..result.id_) 
end
end
if result.profile_photo_ then 
if abbd and abbd ~= result.profile_photo_.big_.persistent_id_ then 
local abbd_text = {
"وفف مو صوره غنبلةة، 🤤♥️",
"طالع صاكك بالصوره الجديده ممكن نرتبط؟ ، 🤤♥️",
"حطيت صوره جديده عود شوفوني اني صاكك بنات، 😹♥️",
"اححح شنيي هالصوره الجديده، 🤤♥️",
"اححح مو صورة ضيم، 💋♥️",
"مقتنع بصورتك؟،🤔😈",
}
abbd3 = math.random(#abbd_text)
Dev_Abd(msg.chat_id_, msg.id_, 1, abbd_text[abbd3], 1, 'html')
end  
DevAbd:set("SHBAHTeAm:Photo"..result.id_, result.profile_photo_.big_.persistent_id_) 
end
end
end,nil) 
end
end

end
return {
SHBAH = ChangePhoto
}