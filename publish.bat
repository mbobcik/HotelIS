rmdir /s /q bin
mkdir bin

dotnet build HotelIS\QueryModuleAPI\QueryModuleAPI.csproj -c Release /p:DeployOnBuild=true /p:PublishProfile=HotelIS\QueryModuleAPI\Properties\PublishProfiles\FolderProfile.pubxml -r win10-x64
dotnet build HotelIS\CommandModuleAPI\CommandModuleAPI.csproj -c Release /p:DeployOnBuild=true /p:PublishProfile=HotelIS\CommandModuleAPI\Properties\PublishProfiles\FolderProfile.pubxml -r win10-x64
dotnet build HotelIS\ProjectionEngineAPI\ProjectionEngineAPI.csproj -c Release /p:DeployOnBuild=true /p:PublishProfile=HotelIS\ProjectionEngineAPI\Properties\PublishProfiles\FolderProfile.pubxml -r win10-x64