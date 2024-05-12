ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
ESX = exports["es_extended"]:getSharedObject()
        Citizen.Wait(0)
    end
end)
 
RegisterCommand('fps', function()
    OpenFPSMenu()
end)

function OpenFPSMenu() 

    local elements = {
          {label = 'FPS MODE [ON]',        value = 'fps'},
          {label = 'FPS MODE [OFF]',        value = 'fps2'},
    }

    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open(
      'default', GetCurrentResourceName(), 'headbagging',
      {
        title    = 'AV FPS BOOST Menu',
        align    = 'top-left',
        elements = elements
        },
            function(data2, menu2)
                if data2.current.value == 'fps' then
                    SetTimecycleModifier('yell_tunnel_nodirect')
                elseif data2.current.value == 'fps2' then
                    SetTimecycleModifier()
                    ClearTimecycleModifier()
                    ClearExtraTimecycleModifier()
                end
            end,
      function(data2, menu2)
        menu2.close()
      end
    )
end

print("^0[^5AvalonV-Scripts^0] ^2Script successfully started!^0")
print("^0[^5AvalonV-Scripts^0] ^5discord.gg/avalonV^0")
print("^0[^5AvalonV-Scripts^0] ^2Lxca#3532^0")
