
FROM mcr.microsoft.com/dotnet/sdk:6.0
WORKDIR /App
EXPOSE 5185
COPY . .
RUN dotnet build -o /App
ENTRYPOINT ["dotnet", "MyWebApp.dll"]
