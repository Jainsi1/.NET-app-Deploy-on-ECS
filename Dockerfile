
FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /App
EXPOSE 5185
COPY .publish .
RUN dotnet build 
ENTRYPOINT ["dotnet", "MyWebApp.dll"]
