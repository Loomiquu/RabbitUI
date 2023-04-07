
export type Version = {
    CurrentVersionReleaseDate: string,
    CurrentVersion: number,
    UpToDate: boolean
}

--Generic Void Type
export type Void = nil

export type Deprecated = {}

export type CompilerError = (Args: any) -> Void

--Roblox Style Sheet Handles the RSS part of RabbitUI
export type RSSFile = ModuleScript

--The main file extension of RabbitUI, This will handle all the UI information
export type RabbitFile = ModuleScript

--The fully Compiled Rabbit File, that can be utilized with Render() function
export type CompiledRabbitFile = {
    InterfaceType: string;
    Parent: Instance;

    InterfaceProps: 
    ScreenGui |
    SurfaceGui |
    BillboardGui |
    AdGui |
    PluginGui;

    Instances: table
}

export type RabbitConfig = {
    DebugPrint: boolean,
    StrictFileNames: boolean
}

export type RabbitUI = {
    Config: RabbitConfig,
    Version: Version,

    CompileRSSFile: (RSSFile: RSSFile) -> Void,
    CompileRabbitFile: (self: RabbitUI, RabbitFile: RabbitFile) -> CompiledRabbitFile

}

return nil