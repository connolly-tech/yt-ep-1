Hi, there. This episode is an introduction to D using the DSFML library. It's aimed at people who are just getting into programming and are looking for slightly more advanced projects. This tutorial is also great for anyone just getting into D.

> Slide show of points
You should already understand:
* Basic program flow
* Functions
* Classes
* Structs
* Objects
* Pass by reference/copy 


Let's just get into it!

Dlang is a growing language in the community, it offers many of the benefits of C or C++ whilst maintaining the simplicity of development that Java offers. I think this makes it a good choice for game development as it has the same level of overhead as C but much friendlier syntax.


> Installing dub

The first step is to get setup with Dub, Dub is D's project manager, it allows you to easily use libraries and manages compiling and running your projects too! Check below for links to the download page.
I'm using Arch Linux, these install steps may be different for your distribution or Operating System, details on that are also in the description.

> Creating new dub project

After you have installed dub, create a new directory, open a terminal or command prompt and cd to that directory. Just run `dub` and it will prompt you to specify a couple settings, feel free to set the name of the application but leave most things as their defaults - it can all be changes later.
You should now see a couple files and a folder called `source`, this means you're all set.

> Open vscode and app.d file

Open the project folder in your favourite IDE, I use vscode as it works best for me. Open up the file app.d, this is the "main" file of your project. Just to make sure everything works I'm going to edit the string in this writeln and run it. To compile and run your project just type `dub` again in your terminal and it should output "Hello, World!". If it doesn't, you might be missing the `dmd` compiler, check below for links to that, or you wrote something other than "Hello, World!" in there.

> Add dsfml as a dependacy and show dub.json file.

Now that we know everything works, we can get started with dsfml, if you weren't aware, dsfml is a D port of the popular C++ SFML library that is used for 2D games. The best thing about dub is that it manages libraries for us (mostly), more on that in a bit. What this means for us is that it's incredibly easy to download and use libraries in D. In your terminal type `dub add dsfml` and it will add dsfml as a dependancy of our project. This means we can now use this library in our code.
> Edit file to create blank window

Now we're ready to write some code, firstly, we add two more imports, these are from the dsfml library and are used to create our game window.
We create a new window with a resolution of 800x600 and the title "DSFML!", because DSFML is great. Next we add two while loops, the first one will continue to run while the window exists, without this our program would just exist instantly, which really isn't what we want; it is what is commonly referred to as the game loop.
The second loop will fetch any events, these are things like keypresses or mouse movements. We check to see if there is a window Closed event, this happens when you try and close the window, without it nothing would happen when you click the X.

The last two lines of code are the most important, we clear the window, removing anything that might be there from a previous frame and setting the background colour, then we call display which will update the window with anything we've drawn this frame - that just happens to be not a lot this time around.

> Run it!

Alright, it's time to run it, go ahead and type dub in your terminal. It might take a little longer as it has to fetch the dsfml library for us.
In my case, dub fetched the library but it failed to include it, I'm not sure why this happened so I went to the dsfml website (linked below) and downloaded it from there, I then put all the .so files in /usr/lib and that fixed it.

If you picked the same RGB colours as me for you background, you should now see a nice bright yellow window, well done, you just wrote a simple game loop and event handler in D. If you received an error that I haven't mentioned, you most likely missed something, make sure that your code matches mine and if you still aren't sure, feel free to leave a comment and hopefully someone will help you out.

Ok that's all for this video. I hope this quick introduction helped you get started with D, I will be continuing this series possibly into a "remaking retro games" style thing where we create Pong, Asteroids, Space Invaders and other class arcade games.

This was my first ever video, and any feedback is appreciated, in the spirit of open source, you will find a github repository linked below containing all the resources from this videos, including a full transcript.
If you have any ideas of projects you'd like me to develop, let me know down below. I'd also greatly appreciate if you showed how much you enjoyed this video by clicking all the relevant buttons below.

See you next episode!

# Description
Dub: https://code.dlang.org/download.
If only Linux, first check if you distribution has it already:
Debian: sudo apt install dub
Arch: sudo yay -S dub (Or check the AUR)
DMD: https://dlang.org/download.html
Debian: sudo apt install dmd
Arch: sudo yay -S dmd (Or again check AUR)

ld error: http://dsfml.com/downloads.html
Download for dmd, extract and move everything in the lib folder to /usr/lib