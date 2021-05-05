local http_request = syn.request

local HttpServ = game:GetService('HttpService')
local url = "" -- дискорд вебхук юрл


local data = 
    {
        ["username"] = "username", -- имя вебхука\webhook name
        ["avatar_url"] = "", -- сылка на аву вебхука\webhook avatar url 
        ["content"] = "content", --обычное сообщение самый верх\message at up
        ["embeds"] = {{
            ["title"] = "__**title**__", --имя всего\title
            ["url"] = "", --url title
            ["description"] = "description",
            ["type"] = "rich", -- не трогац ( если че документация)\dont change
            ["color"] = tonumber(0x52F532), --цвет в hex после 0x\ color embed hex after 0x
            ["image"] = {
                ["url"] = "", -- картинка снизу\pic at down
            },
            ["thumbnail"] = {
                ["url"] = "", -- картинка справа сверху\pic at right up
            },
            ["footer"] = {
                ["text"] = "text", -- текст снизу\down messagr
                ["icon_url"] = "", --ава юрл самый низ \ avatar at down url
            },
            ["author"] = {
                ["name"] = "name author", -- автор \ author
                ["url"] = "", -- ссылка \ link to author
                ["icon_url"] = "", --ссылка на аву автора \ url avatar author
            },
            ["fields"] = {
                {
                    ["name"] = "__**name**__", -- имя\name 
                    ["value"] = "value", -- что будет написано \ message
                    ["inline"] = true --в одной строке 
                },
                {
                    ["name"] = "__**name**__", -- имя
                    ["value"] = "value", -- что будет написано
                    ["inline"] = true --в одной строке 
                },
        }}
    }}
    local newdata = HttpServ:JSONEncode(data)
    
    local headers = {
            ["content-type"] = "application/json"
    }
    
    local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
    http_request(request_payload)
