#FROM mcr.microsoft.com/windows/servercore:1809
ARG from_image_namespace
FROM $from_image_namespace/dotnet:1809-4.5.2

SHELL ["powershell", "-ExecutionPolicy", "Bypass"]

ADD files/MSBuild.Extension.Pack.4.0.13.0   MSBuild.Extension.Pack.4.0.13.0
ADD files/visualcppbuildtools_full.exe      visualcppbuildtools_full.exe

RUN echo "msbuildInstall"                                                                                          ; \
#    ".\visualcppbuildtools_full.exe /InstallSelectableItems 'VisualCppBuildTools_ATLMFC_SDK;VisualCppBuildTools_NETFX_SDK' /NoRestart /Quiet /Log install_log\visualcppbuildtools.log | out-null" ; \
    ".\visualcppbuildtools_full.exe /InstallSelectableItems 'VisualCppBuildTools_ATLMFC_SDK' /NoRestart /Quiet /Log install_log\visualcppbuildtools.log | out-null" ; \
    Install-Package -Force ".\MSBuild.Extension.Pack.4.0.13.0\x86\MSBuild_Extension_Pack_4_x86.msi"                ; \
    Install-Package -Force ".\MSBuild.Extension.Pack.4.0.13.0\x64\MSBuild_Extension_Pack_4_x64.msi"                ; \
    Remove-Item -recurse -path C:\MSBuild.Extension.Pack.4.0.13.0                                                  ; \
    rm visualcppbuildtools_full.exe                                                                                ; \
    echo "done!"

CMD ["cmd"]
