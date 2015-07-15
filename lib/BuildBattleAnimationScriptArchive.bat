del libbattleanimationscripts.a
for /R scripts\battleanimationscripts %%i in (*.o) do @del %%i
for /R scripts\battleanimationscripts %%i in (*.pks) do @compiler\Gen3ScriptCompiler.exe --mode battleanimation %%i
make -f battleanimationscriptmake & pause
