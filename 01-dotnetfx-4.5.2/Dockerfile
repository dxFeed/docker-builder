FROM mcr.microsoft.com/windows/servercore:1809

SHELL ["powershell", "-ExecutionPolicy", "Bypass"]

#ADD files/NDP452-KB2901951-x86-x64-DevPack.exe  NDP452-KB2901951-x86-x64-DevPack.exe
ADD https://download.microsoft.com/download/4/3/B/43B61315-B2CE-4F5B-9E32-34CCA07B2F0E/NDP452-KB2901951-x86-x64-DevPack.exe NDP452-KB2901951-x86-x64-DevPack.exe

RUN echo "dotNetSDKInstall"                                                             ; \
#    "iex ((New-Object System.Net.WebClient).DownloadString('https://download.microsoft.com/download/4/3/B/43B61315-B2CE-4F5B-9E32-34CCA07B2F0E/NDP452-KB2901951-x86-x64-DevPack.exe'))" ; \
    ".\NDP452-KB2901951-x86-x64-DevPack.exe /q /norestart | out-null"                   ; \
    rm NDP452-KB2901951-x86-x64-DevPack.exe                                             ; \
    echo "done!"

CMD ["cmd"]
