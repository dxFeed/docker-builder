#FROM mcr.microsoft.com/windows/servercore:1809
ARG from_image_namespace
FROM $from_image_namespace/msbuild:1809-4.5.2-2015

SHELL ["powershell", "-ExecutionPolicy", "Bypass"]

ADD files/NUnit-2.6.7.msi   NUnit-2.6.7.msi

RUN echo "toolsInstall"                                                                            ; \
    "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" ; \
    Install-Package -Force .\NUnit-2.6.7.msi                                                       ; \
    rm NUnit-2.6.7.msi                                                                             ; \
    choco install -y git cmake 7zip                                                                ; \
    echo "done!"

ADD entrypoint.bat entrypoint.bat
ADD builder.bat builder.bat

ENTRYPOINT ["entrypoint.bat"]
CMD ["builder.bat"]
#CMD ["cmd"]
