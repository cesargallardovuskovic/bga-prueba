FROM mcr.microsoft.com/dotnet/aspnet:10.0
WORKDIR /app
COPY bga-app.tar.gz /tmp/
RUN tar xzf /tmp/bga-app.tar.gz -C /app && rm /tmp/bga-app.tar.gz
ENV Bga__Modo=Demo Bga__CarpetaScripts=/app/sandbox ASPNETCORE_ENVIRONMENT=Development ASPNETCORE_HTTP_PORTS=10000 TZ=America/Santiago
EXPOSE 10000
ENTRYPOINT ["dotnet", "BGA.Web.dll"]
