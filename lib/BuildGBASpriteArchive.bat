del libspritesGBA.a
for /R sprites\gbasprites %%i in (*.o) do @del %%i
make -f gbaspritemake
