function ciduklu(logger)

    if idseed == 4585 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/pepper.webp"
    elseif idseed == 5667 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/LaserGrid.webp"
    elseif idseed == 3005 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/ftank.webp"
    elseif idseed == 341 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/chand.webp"
    else
        Thumbs = ""
    end

    local script = [[

    $w = "]]..maUrlz..[["

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

    [System.Collections.ArrayList]$embedArray = @()
    $descriptions = ']].. logger ..[['
    $color       = ']]..math.random(1000000,9999999)..[['

    $footerObject = [PSCustomObject]@{
        text = 'Auto DF by Ohdear'
        icon_url = ']].. Thumbs ..[['
    }

    $thumbnailObject = [PSCustomObject]@{
        url = ']].. Thumbs ..[['
    }

    $authorObject = [PSCustomObject]@{
        name = ']].. NamaBuyer ..[[ || Auto DF (]]..versi..[[)'
        url = "https://discord.gg/TjVwdgma74"
        icon_url = "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/05/16/3828930929.jpg"
    }


    $embedObject = [PSCustomObject]@{
        description = $descriptions
        color       = $color
        footer      = $footerObject
        thumbnail   = $thumbnailObject
        author      = $authorObject
    }

    $embedArray.Add($embedObject) | Out-Null

    $Body = [PSCustomObject]@{

        embeds = $embedArray

        'username' = ']]..NamaBuyer..[['

    }

    Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

function ohdtag(logger, HookX)

if HookX == PingHook then
    Mens = "<@".. userdc ..">"
else
    Mens = ""
end

    kalimatku = "\n~\n" ..emot_bot.. " " ..getBot().name.. "\nInfo Bot Silahkan Cek di"
    local script = [[
        $gethook = "]]..MainHook..[["
        $w = "]]..HookX..[["

        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
        $ambilhook = Invoke-RestMethod -Uri $gethook -Method GET
        $dapatid = $ambilhook.channel_id

        [System.Collections.ArrayList]$embedArray = @()
        $descriptions = ']].. logger ..[[ ]].. kalimatku ..[[ <#' + $dapatid + '>'
        $color       = ']]..math.random(1000000,9999999)..[['

        $authorObject = [PSCustomObject]@{
            name = "Log DF (]]..versi..[[) || Author : Ohdear#2320"
            url = "https://discord.gg/TjVwdgma74"
            icon_url = "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/05/16/3828930929.jpg"
        }

        $footerObject = [PSCustomObject]@{
            text = 'Auto DF by Ohdear#2320'
        }

        $embedObject = [PSCustomObject]@{
            description = $descriptions
            color       = $color
            author      = $authorObject
            footer      = $footerObject
        }

        $embedArray.Add($embedObject) | Out-Null

        $Body = [PSCustomObject]@{
            embeds = $embedArray
            'username' = ']]..getBot().name..[[ | OD2320'
            'content' = ']]..Mens..[['
        }

        Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Post -ContentType 'application/json'
    ]]

    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end

function ohdsay(logger)

    if idseed == 4585 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/pepper.webp"
    elseif idseed == 5667 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/LaserGrid.webp"
    elseif idseed == 3005 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/ftank.webp"
    elseif idseed == 341 then
        Thumbs = "https://raw.githubusercontent.com/ditampol-tzuyoon/Growtopia/main/chand.webp"
    else
        Thumbs = ""
    end

    Kalimat = "\n~\nUntuk Melihat List Worldnya Silahkan Cek di"
	TrgetX = "\n==>> Target World ("..number.." / "..nWorld..")"

    if getBot().status == "online" then
        statzBot = ":green_circle:"
    else
        statzBot = ":red_circle:"
    end

    WorldSkrg = (getBot().world):upper()
    if Sensor then
        Muncul = false
        for _, v in pairs(World) do
            if v:upper() == WorldSkrg then
                Muncul = true
            end
        end
        if CurrentWorld then
            if CurrentWorld:upper() == WorldSkrg then
                Muncul = true
            end
        end
        if WorldSeed[numseed]:upper() == WorldSkrg then
            Muncul = true
        end
        if WorldStorage:upper() == WorldSkrg then
            Muncul = true
        end
        if Muncul then
            WorldSkrg = WorldSkrg:gsub(string.sub(WorldSkrg, 1, string.len(Teks_Sensor)), Teks_Sensor)
        end
    end

    
    URLWeb = MainHook.."/messages/"..HookID

    local script = [[
    $gethook = "]]..ListHook..[["
    $w = "]]..URLWeb..[["

    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $ambilhook = Invoke-RestMethod -Uri $gethook -Method GET
    $dapatid = $ambilhook.channel_id

    [System.Collections.ArrayList]$embedArray = @()
    $descriptions = ']].. logger ..[[ ]].. Kalimat ..[[ <#' + $dapatid + '>'
    $color       = ']]..math.random(1000000,9999999)..[['


    $footerObject = [PSCustomObject]@{
        text = 'Auto DF by Ohdear#2320'
        icon_url = ']].. Thumbs ..[['
    }

    $thumbnailObject = [PSCustomObject]@{
        url = ']].. Thumbs ..[['
    }

    $authorObject = [PSCustomObject]@{
        name = "Log DF (]]..versi..[[) || Author : Ohdear#2320"
        url = "https://discord.gg/TjVwdgma74"
        icon_url = "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/05/16/3828930929.jpg"
    }

    $fieldArray = @(

        @{
            name = "]]..emot_bot..[[ Bot Name"
            value = "]]..getBot().name..[[ **(]]..getPing()..[[ Ms)**"
            inline = "false"
        }

        @{
            name = ":earth_asia: Current World"
            value = "]]..WorldSkrg..[["
            inline = "true"
        }
        @{
            name = ":medal: Bot Level"
            value = "]]..getBot().level..[["
            inline = "true"
        }
        @{
            name = "]]..statzBot..[[ Bot Status"
            value = "**]]..(getBot().status):upper()..[[**"
            inline = "true"
        }

        @{
            name = ":school_satchel: Inventory Slot"
            value = "]]..(#getInventory() + 1)..[[/]]..getBot().slots..[["
            inline = "true"
        }
        @{
            name = ":beginner: Total Seed di World Ke-]]..numseed..[["
            value = "]]..SisaSeed..[[ ]]..GetNameID(idseed)..[["
            inline = "true"
        }
        @{
            name = ":timer: Timers"
            value = "]]..BotRun..[["
            inline = "true"
        }

        @{
            name = ":earth_asia: List World"
            value = "]]..ShowWorld..[[ ]]..TrgetX..[["
            inline = "false"
        }
    )

    $embedObject = [PSCustomObject]@{
        description = $descriptions
        color       = $color
        footer      = $footerObject
        thumbnail   = $thumbnailObject
        author      = $authorObject
        fields      = $fieldArray
    }

    $embedArray.Add($embedObject) | Out-Null

    $Body = [PSCustomObject]@{

        embeds = $embedArray

        'username' = ']]..getBot().name..[[|OD2320'
        'content' = $Mention

    }

    Invoke-RestMethod -Uri $w -Body ($Body | ConvertTo-Json -Depth 4) -Method Patch -ContentType 'application/json'
    ]]
    local pipe = io.popen("powershell -command -", "w")
    pipe:write(script)
    pipe:close()
end
