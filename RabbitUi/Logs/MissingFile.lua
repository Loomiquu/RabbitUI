local mainDirectory = script.Parent.Parent

local types = require(mainDirectory.TypeDeclaration)
type CompilerError = types.CompilerError

local function MissingFileType()
    error(`\n\t[RabbitUI Compiler Error]\n\t[Error 102]: Missing/Unsupported Instance! Please use a ModuleScript`)
end

return MissingFileType:: CompilerError