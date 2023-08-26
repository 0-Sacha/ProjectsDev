# ProjectsDev

Dev platform for the Project 'ProjectCore' and 'LittleECS'.

'ProjectCore' is mainly a formatter like the fmt library in C++. It also contain a logger, a JSON serializer and a Test system and a profiler, all using the formatter.\
'LittleECS' is a Entities Components System.\
'PremakeUtilities' is a wrapper for premake.\
'ProjectCoreModules' and 'Spitfire' aren't usefull for now.

You can build the project by running a script in the 'PremakeUtilities' folder according to witch platform you want to use. There are other one in the 'PremakeUtilities/Others' folder if you want.\
For example, to get the Visual Studio 2022 just run from the base folder :
`./PremakeUtilities/VSProject.bat`
then chose your project to run in the VS Editor.

As for others compiler\
`.\PremakeUtilities\MakeProject_clang.bat` using clang\
use `make config=release_x64` or  `make config=rdebug_x64`\
In any case you can use Visual Studio Code and see the tasks.json and the launch.json for all possibilities.
