if not exist build mkdir build
pushd build
xcopy /S /I /Y /Q ..\lib .
cl /Zi /nologo /Od ..\main.c /I ..\include /link /LIBPATH:..\lib kernel32.lib winmm.lib gdi32.lib user32.lib shell32.lib sdl2main.lib sdl2.lib /SUBSYSTEM:CONSOLE
popd
