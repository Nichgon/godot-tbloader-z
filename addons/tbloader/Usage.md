# Godot version notice
You'll want to make sure you're on the latest version of Godot 4 when using TBLoader, since that's
what we're aiming to support!

# Usage
In the Godot editor, click on Project -> Project Settings, and go to the Addons tab. Check the "Enable" box next to TBLoader.

To build a level's geometry, create a `TBLoader` node in your scene hierarchy. In the properties of
the node you can select where your `.map` file is located, plus some more useful settings. With the
node still selected and the 3D view open, you will see a button `Build Meshes` in the toolbar the 3D
view. Click that button to build the geometry.

# TrenchBroom game config
The `tb-gameconfig` folder contains a game configuration for this addon. This includes a simple FGD
which will have some common entities that create Godot nodes. Simply place the files in a folder
called `Godot` inside the `games` folder of your TrenchBroom installation, so you would have
`games/Godot/<files>`.
