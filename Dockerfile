
# FROM mcr.microsoft.com/dotnet/sdk:6.0
# WORKDIR /App
# EXPOSE 5185
# COPY . /App
# RUN dotnet build 
# ENTRYPOINT ["dotnet", "MyWebApp.dll"]
FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /app
COPY . .
RUN dotnet publish -c Release -o out

FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app
COPY --from=build /app/out .
ENTRYPOINT ["dotnet", "MyWebApp.dll"]
