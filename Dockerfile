# Start with the official .NET Core runtime image
FROM mcr.microsoft.com/dotnet/sdk:6.0
EXPOSE 5185

# Copy the published app into the container
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster AS build
WORKDIR /src
COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o /app

# Build the final image for the container
FROM base AS final
WORKDIR /app
COPY --from=build /app .
ENTRYPOINT ["dotnet", "MyWebApp.dll"]
