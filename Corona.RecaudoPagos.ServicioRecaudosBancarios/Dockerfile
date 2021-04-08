

FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim AS base
ARG source			  
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim AS build
WORKDIR /src
COPY ["Corona.RecaudoPagos.ServicioRecaudosBancarios/Corona.RecaudoPagos.ServicioRecaudosBancarios.csproj", "Corona.RecaudoPagos.ServicioRecaudosBancarios/"]
COPY ["Corona.RecaudoPagos.BM/Corona.RecaudoPagos.BM.csproj", "Corona.RecaudoPagos.BM/"]
COPY ["Corona.RecaudoPagos.DT/Corona.RecaudoPagos.DT.csproj", "Corona.RecaudoPagos.DT/"]
COPY ["Corona.RecaudoPagos.Soporte/Corona.RecaudoPagos.Soporte.csproj", "Corona.RecaudoPagos.Soporte/"]
COPY ["Corona.RecaudoPagos.DM/Corona.RecaudoPagos.DM.csproj", "Corona.RecaudoPagos.DM/"]
COPY ["Corona.RecaudoPagos.Facade/Corona.RecaudoPagos.Facade.csproj", "Corona.RecaudoPagos.Facade/"]																						
RUN dotnet restore "Corona.RecaudoPagos.ServicioRecaudosBancarios/Corona.RecaudoPagos.ServicioRecaudosBancarios.csproj"
COPY . .
WORKDIR "/src/Corona.RecaudoPagos.ServicioRecaudosBancarios"
RUN dotnet build "Corona.RecaudoPagos.ServicioRecaudosBancarios.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "Corona.RecaudoPagos.ServicioRecaudosBancarios.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY Corona.RecaudoPagos.ServicioRecaudosBancarios/Corona.RecaudoPagos.ServicioRecaudosBancarios.xml /app/								  																												
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "Corona.RecaudoPagos.ServicioRecaudosBancarios.dll"]