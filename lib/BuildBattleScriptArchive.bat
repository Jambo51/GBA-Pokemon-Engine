del libbattlescripts.a
for /R scripts\battlescripts %%i in (*.o) do @del %%i
for /R scripts\battlescripts %%i in (*.pks) do @compiler\Gen3ScriptCompiler.exe --mode battle %%i
make -f battlescriptmake & pause
