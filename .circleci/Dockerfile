FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["mytest-1/mytest-1.csproj", "mytest-1/"]
RUN dotnet restore "mytest-1/mytest-1.csproj"
COPY . .
WORKDIR "/src/mytest-1"
RUN dotnet build "mytest-1.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "mytest-1.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "mytest-1.dll"]
