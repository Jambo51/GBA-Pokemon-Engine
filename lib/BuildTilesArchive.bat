del libtiles.a
for /R tiles\fonts %%i in (*.o) do @del %%i
make -f tilesmake & pause
