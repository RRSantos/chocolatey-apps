@rem echo "%1"
@set %installUtil=0
@set %installImage=0
@set %installDev=0

@if "%1"=="" (
	goto usage
)

@if /I "%1%"=="util" (
	%installUtil% = 1
)
@if /I "%1%"=="image" (
	%installImage% = 1
)
@if /I "%1%"=="dev" (
	%installDev% = 1
)
@if /I "%1%"=="all" (
	%installUtil% = 1
	%installImage%=1
	%installDev%=1
)
@if "%installUtil%"=="1" (
	start cinst notepadplusplus ccleaner 7zip Firefox GoogleChrome sumatrapdf.install vlc launchy recuva greenshot dropbox malwarebytes cdburnerxp bitdefenderavfree PDFCreator winmerge 
)

@if "%installImage%"=="1" (
	start cinst gimp
)

@if "%installDev%"=="1" (
	start cinst Console2 vim fiddler4 virtualbox sublimetext2 pencil SourceCodePro webpi git lockhunternodejs.install windirstat linqpad4 HxD
)
:usage
@echo.
@echo Usage: 
@echo install-apps category
@echo.
@echo Example: install-apps all
@echo.
@echo Avaliabe categories:
@echo       all                All categories
@echo       dev                Only development apps
@echo       image              Only image apps
@echo       utils              Only util apps
