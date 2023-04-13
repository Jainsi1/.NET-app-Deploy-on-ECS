# Start with the official .NET Core runtime image
FROM mcr.microsoft.com/dotnet/runtime:6.0
EXPOSE 5185



# Build the final image for the container
FROM mcr.microsoft.com/dotnet/runtime:6.0
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "MyWebApp.dll"]
