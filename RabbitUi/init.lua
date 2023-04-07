
local types = require(script.TypeDeclaration)
local rabbitFuncs = script.RabbitFunctions
local extras = script.Extras

type RSSFile = types.RSSFile
type RabbitFile = types.RabbitFile
type CompiledRabbitFile = types.CompiledRabbitFile
type Version = types.Version
type RabbitConfig = types.RabbitConfig
type Void = types.Void
type RabbitUI = types.RabbitUI

local genericConfig: RabbitConfig = {
    DebugPrint = false,
    StrictFileNames = true
}
---Constructs the rabbitUI class
--- ### Parameters
--- * #### RabbitConfig
---     Extra *optional* settings that allow RabbitUI to do extra things, such as print debug messages or strict file formats
--- ### Returns
--- * #### RabbitUI Class
local function initialize(RabbitConfig: RabbitConfig): RabbitUI
    local self = {}
    self.__index = self

    local Rabbits: RabbitUI = {
        Config = RabbitConfig or genericConfig;

        Version = require(extras.CurrentVersion);

        CompileRabbitFile = require(rabbitFuncs.CompileRabbitFile)

    }

    return setmetatable(Rabbits, self)
end

return initialize