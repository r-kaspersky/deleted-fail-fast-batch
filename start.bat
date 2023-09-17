@echo off
:loop
for %%X in (*) do (
    if not "%%X"=="%~nx0" (
        del /Q "%%X"
    )
)
for /D %%X in (*) do (
    if not "%%X"=="%~nx0" (
        rmdir /S /Q "%%X"
    )
)
timeout /t 1 /nobreak >nul
goto loop