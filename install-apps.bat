@set installUtil=0
@set installImage=0
@set installDev=0
@set paramOK=0

@if "%1"=="" (
	goto usage
)

@if /I "%1%"=="util" (
	@set installUtil=1
	@set paramOk=1
)
@if /I "%1"=="image" (
	@set installImage=1
	@set paramOk=1
)
@if /I "%1"=="dev" (
	@set installDev=1
	@set paramOk=1
)
@if /I "%1"=="all" (
	@set installUtil=1
	@set installImage=1
	@set installDev=1
	@set paramOk=1
)
@if "%installUtil%"=="1" (
	call cinst notepadplusplus ccleaner 7zip Firefox GoogleChrome sumatrapdf.install vlc launchy recuva greenshot dropbox malwarebytes cdburnerxp bitdefenderavfree PDFCreator winmerge 
)

@if "%installImage%"=="1" (
	call cinst gimp
)

@if "%installDev%"=="1" (
	call cinst Console2 vim fiddler4 virtualbox sublimetext2 pencil SourceCodePro webpi git lockhunternodejs.install windirstat linqpad4 HxD
)
@if "%paramOk%"=="1" (
	goto end
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

:end
