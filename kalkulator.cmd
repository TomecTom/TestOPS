@echo off

set /p prvnic=napiste prvni cislo:
set /p druhec=napiste druhe cislo:
set /p operace=napiste operaci /,*,+:





if "%operace%"=="*" (
    GOTO SOUCIN
) else if "%operace%"=="/" (
    GOTO DELENI
) else if "%operace%"=="+" (
    GOTO SOUCET
) else (
    GOTO KONEC
)




:SOUCIN
set /a vysledek=%prvnic% * %druhec%
echo %prvnic%*%druhec%=%vysledek%
GOTO:KONEC
:DELENI
set /a vysledek=%prvnic% / %druhec%
echo %prvnic%/%druhec%=%vysledek%
GOTO:KONEC
:SOUCET
set /a vysledek=%prvnic% + %druhec%
echo %prvnic%+%druhec%=%vysledek%
GOTO:KONEC

:KONEC

pause