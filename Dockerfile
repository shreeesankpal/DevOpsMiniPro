FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8

WORKDIR /inetpub/wwwroot

COPY SourceCode/onlineplantsell/ .

EXPOSE 80