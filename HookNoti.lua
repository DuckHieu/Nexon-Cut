if hookfunction then  
    task.delay(2.5,function()
        require(game.ReplicatedStorage.Notification).new = function(v1,v2) 
            v1 = tostring(v1):gsub("<Color=[^>]+>", "") 
            local Nof = game.Players.LocalPlayer.Character:FindFirstChild('Notify') or (function() 
                if not game.Players.LocalPlayer.Character:FindFirstChild('Notify') then 
                    local nof = Instance.new('StringValue',game.Players.LocalPlayer.Character)
                    nof.Name = 'Notify'
                    nof.Value = ''
                    return nof
                end 
            end)()
            Nof.Value = v1 
            local FakeLOL = {}
            function FakeLOL.Display(p18)
                return true;
            end; 
            function FakeLOL.Dead()
            end
            return FakeLOL
        end
    end)
end
