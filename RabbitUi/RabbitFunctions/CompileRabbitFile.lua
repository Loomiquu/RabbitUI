local mainDirectory = script.Parent.Parent
local logs = mainDirectory.Logs

local types = require(mainDirectory.TypeDeclaration)

type RabbitFile = types.RabbitFile
type CompiledRabbitFile = types.CompiledRabbitFile
type RabbitUI = types.RabbitUI

local function CompiledRabbitFile(self: RabbitUI, file: RabbitFile): CompiledRabbitFile
    local strictMode = self.Config.StrictFileNames
    local debugMode = self.Config.DebugPrint

    if file == nil or not file:IsA("ModuleScript") then require(logs.MissingFile)() end
end


return CompiledRabbitFile