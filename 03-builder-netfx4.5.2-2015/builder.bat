@echo "RELEASE : %RELEASE%"
@echo "FLAGS   : %FLAGS%"
@echo "SRCDIR  : %SRCDIR%"
@echo "C-API   : %C_API_REPO%"

@cd %SRCDIR%
@.\make_package.bat %RELEASE% %FLAGS%


