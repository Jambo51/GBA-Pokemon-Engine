del libaudio.a
for /R audio\gbppokemoncries %%i in (*.o) do @del %%i
for /R audio\gbpsongs %%i in (*.o) do @del %%i
for /R audio\m4apokemoncries %%i in (*.o) do @del %%i
for /R audio\m4asamples %%i in (*.o) do @del %%i
for /R audio\m4asongs %%i in (*.o) do @del %%i
for /R audio\m4asoundbanks %%i in (*.o) do @del %%i
for /R audio\m4awavesamples %%i in (*.o) do @del %%i
make -f audiomake
 & pause