del libbattlescripts.a
for /R scripts\battlescripts %%i in (*.o) do @del %%i
for /R scripts\battlescripts %%i in (*.bs) do @compiler\Gen3ScriptCompiler.exe -m battle %%i
make -f battlescriptmake & pause
