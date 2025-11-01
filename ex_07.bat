@echo off
set /P name="What's your name? "
set /P age="How old are you? "

if %age% GEQ 18 (
    echo Dear %name%. You are adult.
) else (
    echo Dear %name%. You are minor.
)
pause