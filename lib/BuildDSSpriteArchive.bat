del libspritesDS.a
for /R sprites\dssprites %%i in (*.o) do @del %%i
make -f dsspritemake
