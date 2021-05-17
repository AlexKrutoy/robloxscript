local http_request = syn.request

local HttpServ = game:GetService('HttpService')
local url = "" -- discord webhook url


local data = 
    {
        ["username"] = "", -- webhook name
        ["avatar_url"] = "", -- webhook avatar url 
        ["content"] = "content", --message at up
        ["embeds"] = {{
            ["title"] = "__**Title**__", --имя всего\title
            ["url"] = "", -- title url (when click title, it will open link)
            ["description"] = "description",
            ["type"] = "rich", -- \ dont change
            ["color"] = tonumber(0x52F532), --  color embed hex after 0x
            ["image"] = {
                ["url"] = "", -- picture at down
            },
            ["thumbnail"] = {
               ["url"] = "", -- picture at right up
            },
            ["footer"] = {
                ["text"] = "text", --  down message
                ["icon_url"] = "", --  avatar at down (photo's url)
            },
            ["author"] = {
                ["name"] = "", --  author
                ["url"] = "", -- link to author
                ["icon_url"] = "", --(photo's url) author's avatar
            },
            ["fields"] = {
                {
                    ["name"] = "__**name**__", --  name 
                    ["value"] = "", -- ч text message
                    ["inline"] = true -- dont change
                },
               {
                   ["name"] = "__**name**__", -- имя\ name
                  ["value"] = "value", -- text message
                  ["inline"] = true -- dont change
              },
        }}
    }}
    local newdata = HttpServ:JSONEncode(data)
    
    local headers = {
            ["content-type"] = "application/json"
    }
    
    local request_payload = {Url=url, Body=newdata, Method="POST", Headers=headers}
    http_request(request_payload)
