# GBA-Pokemon-Engine
Source code for Jambo51's Open Source GBA Pokémon Game Engine

# Please Note - this engine is no longer being developed as a result of Nintendo's copyright takedowns on varying hacks and Pokémon fan projects. I apologise for this unfortunate end to the project, but please feel free to adapt any of this code for your own projects.

This engine is being developed in my spare time by myself and only myself. As a result, progress has been slow.
Being open source, anyone is, of course, welcome to contribute to the engine, and I will attempt to assist in
understanding the code where possible. It is assumed at this stage that you know how to run a GBA ROM
and know how to read and code C++.

Simply cloning this repo will not yield a compilable engine, however. There are a number of steps you must
undertake before you will be able to compile this.

First up, you'll need to get yourself a copy of devkitPro. You can find an updater/installer for devkitPro
here: https://sourceforge.net/projects/devkitpro/

You should install the software to somewhere which has no spaces in its path, because having spaces complicates
the compilation process significantly. As an example, on my PC, I have it at C:\devkitPro.

This may raise another question - does the source code work on Unix style operating systems?
My answer is that it should, but I cannot definitively say it will. I have kept case sensitivity in mind
while coding this, so it should not be an issue.

Once you have that installed, you will need to acquire the engine's one library dependency, the tonc library.
You can get it from here: http://www.coranac.com/projects/tonc/
Simply select the latest tonc-code.zip file and decompress it. The files it contains should
be placed in a workspace directory created for the GBA within the devkitPro directory.

For example, the tonc library can be found on my computer at C:\devkitPro\tonc-code\code.
You must add a system variable named "TONCCODE" and point it to the directory of the library's
code. This is a necessity for the makefile to be able to find and include the library.

Now, clone this repo, and place it within the GBA workspace established before.

Skip to the end if you do not want to use an IDE to compile the engine, or would prefer
to use the CLI to build it.

It is advised, though not required, that you make use of an IDE to help code for the engine.
If you already use Eclipse CDT for other C++ projects, then you should consider installing a separate
eclipse purely for this lest coding for GBA be incompatible in some way with coding for PC.
Furthermore, plugins may interact undesirably with devkitPro.

Once installed, set your workspace to the very same GBA workspace we established earlier, and you should be good to go.

Now, from eclipse, we need to import the tonc library, and the source code for this engine. This is a simple
process. Right click in the project explorer and select import, select C++ and finally import existing code as
makefile project.
This should bring up a new window. In it, name the library tonclib (not a requirement, but is advised) and browse to the
location of the library and select it. Finally, just select Finish, and this should work just fine.

Now, we need to load the actual GBA engine in to eclipse. This is handled similarly to the above, except I suggest naming it
GBA-Pokemon-Engine.

Once this is done, there is one final step that must be accomplished before you can run the ROM. You need to set up
a way to trigger the makefile from inside Eclipse. On the right hand side, there should be 3 tabs named "outline",
"Make Target" and "Task List". Click on Make Target and then drop down the GBA-Pokemon-Engine directory.

Right click anywhere on that opened directory and select new.

Then add the following 3 build setups (note you will have to select new again after completing one).
Target Name                           Make Target
Build                                 all
Clean                                 clean
Rebuild                               clean all

Finally, double click the build icon that will have appeared on that right hand side, and the engine should build.
If this has all worked, then you are clear to start developing features for the engine!

If you wish to build the engine from the CLI, simply open up your favourite CLI and navigate to the directory in which
the engine is held, then type "make". This will trigger the pre-existing makefile which should build the engine in its
entirety without needing to interact with Eclipse in any way. You can specify whether you want to just build, clean or
rebuild the engine by using the terms "all", "clean" and "clean all" as parameters for the make command.
