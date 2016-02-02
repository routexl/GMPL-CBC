@ECHO OFF
ECHO.

REM Settings
SET INPUT=%1
SET OUTPUT=out.txt
SET SECONDS=3600
SET RATIOGAP=1E-6

REM Programs and files
SET GLP=glpsol.exe
SET CBC=cbc.exe
SET FILE1=_glp2cbc.lp
SET FILE2=_cbc2glp.lp

IF EXIST %INPUT% (

	REM From GMPL to LP
	%GLP% --math %INPUT% --check --wlp %FILE1%
	ECHO.

	IF EXIST %FILE1% (

		REM Solve the LP WITH CBC
		%CBC% %FILE1% -seconds %SECONDS% -ratiogap %RATIOGAP% solve -gsolution %FILE2%
		ECHO.

		IF EXIST %FILE2% (
			
			REM From LP to GMPL
			%GLP% --math %INPUT% --read %FILE2% > %OUTPUT%
			ECHO.
			
			IF EXIST %OUTPUT% (
			
				type %OUTPUT%
				ECHO.
			)
		)
	)
)
