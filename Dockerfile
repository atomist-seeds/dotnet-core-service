FROM mcr.microsoft.com/dotnet/core/sdk:2.2
WORKDIR /app

COPY . .
RUN dotnet restore
RUN dotnet publish -c Release -o out

EXPOSE 5000

ENTRYPOINT ["dotnet", "./out/dotnetcoreapp.dll"]
