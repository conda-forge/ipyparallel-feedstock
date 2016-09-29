:: Disable command output.
@echo off

:: Check to make sure we can install the ipyparallel widget.
"%PREFIX%\Scripts\jupyter" serverextension --version >> "%PREFIX%\.messages.txt" 2>&1 && if errorlevel 1 goto End
"%PREFIX%\Scripts\jupyter" nbextension --version >> "%PREFIX%\.messages.txt" 2>&1 && if errorlevel 1 goto End

:: Install the ipyparallel widget.
"%PREFIX%\Scripts\jupyter" serverextension enable --sys-prefix --py ipyparallel >> "%PREFIX%\.messages.txt" 2>&1 && if errorlevel 1 exit 1
"%PREFIX%\Scripts\jupyter" nbextension enable --sys-prefix --py ipyparallel >> "%PREFIX%\.messages.txt" 2>&1 && if errorlevel 1 exit 1

:End
exit 0
