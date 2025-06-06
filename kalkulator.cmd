@echo off

set /p prvnic=napiste prvni cislo:
set /p druhec=napiste druhe cislo:
set /p operace=napiste operaci /,*,+:





if %operace%==*: GOTO:SOUCIN
if %operace%==/: GOTO:DELENI
if %operace%==+: GOTO:SOUCET



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