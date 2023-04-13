
# FROM mcr.microsoft.com/dotnet/sdk:6.0
# WORKDIR /App
# EXPOSE 5185
# COPY .publish .
# RUN dotnet build 
# ENTRYPOINT ["dotnet", "MyWebApp.dll"]
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS runtime
WORKDIR /app
EXPOSE 5185
COPY ./MyWebApp/bin/Debug/net6.0/publish .
ENTRYPOINT ["dotnet", "MyWebApp.dll"]
