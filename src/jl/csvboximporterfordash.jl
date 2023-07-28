# AUTO GENERATED FILE - DO NOT EDIT

export csvboximporterfordash

"""
    csvboximporterfordash(;kwargs...)

A CsvboxImporterForDash component.
CsvboxImporterForDash is a component for CSVBox.io integration in Dash.
Keyword arguments:
- `id` (String; optional): The ID used to identify this component in Dash callbacks.
- `data` (Dict; optional): Data from the import operation.
- `licenseKey` (String; required): The license key for CSVBox.io.
- `result` (Bool; optional): Result of the import operation.
- `userId` (String; required): The user ID for CSVBox.io.
"""
function csvboximporterfordash(; kwargs...)
        available_props = Symbol[:id, :data, :licenseKey, :result, :userId]
        wild_props = Symbol[]
        return Component("csvboximporterfordash", "CsvboxImporterForDash", "csvbox_importer_for_dash", available_props, wild_props; kwargs...)
end

