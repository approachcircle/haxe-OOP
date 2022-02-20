# haxe-OOP

this repository contains a project i've created to explore haxe's Object Oriented Programming (OOP).

## project structure

the actual entrypoint for this program (and the implementations for haxe's OOP) is found in source/examples. the classes responsible for all of the OOP stuff can be found in source/effects.

## how to compile (or interpret) this project

i have created a build.hxml file that has args for the compiler to interpret the haxe files. this file can be ran using: `haxe build.hxml`. if instead, however, you would like to compile the project and target C#, C++, Python, Lua etc. then you can use the corresponding commands for the examples below:

| language | command to compile |
|----------|--------------------|
|    C#    |`haxe --class-path source --dce full --cs out/C# --main examples.Main`|
|    C++   |`haxe --class-path source --dce full --cpp out/C++ --main examples.Main`|
|  Python  |`haxe --class-path source --dce full --python out/python/out.py --main examples.Main`|
|   Lua    |`haxe --class-path source --dce full --lua out/lua/out.lua --main examples.Main`|

if your target language was not an example that i listed above, then please read the haxe docs [here](https://haxe.org/manual/target-details.html).

### NOTICE ON LIBRARIES/PACKAGES

i am assuming that if (for example) you wanted to compile to a lua target, then you have all necessary luarocks packages installed for you to run the compiled file. the same goes with C++ and possibly others.

### NOTICE ON TARGETING JAVASCRIPT

you cannot compile this project targeting javascript as it stands right now. no matter what, it will never compile successfully without making actual changes to the code. this is because, annoyingly, i have created a habit of using `Sys.println()` or `Sys.print()` which only works on system languages, which javascript is not. if you would like to compile to javscript, then you must change every `Sys.println()` or `Sys.print()` statement to `trace()` statements. a word on the trace statement firstly: the trace statement by default prefixes anything you pass to it with position information, for example, if i called trace like this: `trace("hello")` in a file called Main.hx on line 27, then the output would look like this: `Main.hx:27:hello`. in some cases, having the position information at the beginning can be very annoying, and the way to override this would be to import haxe.Log.trace and give it an alias like "newTrace", you would do this by adding: `import haxe.Log.trace in newTrace` at the top of your file, then if you were to call `newTrace("hello", null)` then the output would be: `hello`. this is because having the second argument as `null` overrides the position information passed to this function.

### NOTICE ON HAXE ITSELF

i am also assuming that you actually have the haxe language installed, otherwise you can't do much with this project. if you do not have haxe installed, then it can be installed from [here](https://haxe.org/download/).

### other stuff

i have not added particularly good input sanitization, or anything to prevent you from adding the same effect more than once, because this project is just for testing haxe's OOP. there is also no exception catching for unexpected EOF in stdin (pressing CTRL+C when its asking for input).
