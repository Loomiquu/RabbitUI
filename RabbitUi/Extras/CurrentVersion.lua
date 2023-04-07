local mainDirectory = script.Parent.Parent

local types = require(mainDirectory.TypeDeclaration)
local logs = mainDirectory.Logs

type Version = types.Version
type ConstructorTuple = types.ConstructorTuple

local function CurrentVersion(): Version
    local version: Version = {
        CurrentVersion = 0.1,
        CurrentVersionReleaseDate = "4/6/2023 | CDT: 4:50PM",
    }

    return version
end

return CurrentVersion()