
FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /App
EXPOSE 5185
COPY MyWebApp/bin/Debug/net6.0/publish ./
RUN dotnet build 
ENTRYPOINT ["dotnet", "MyWebApp.dll"]
