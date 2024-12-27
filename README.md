# But why
I prefer to code in C#, but I also want Steam to continue tracking my playtime. Minor issue: those things are mutually exclusive, at least out of the box.

The Steam edition of Godot does not natively support .NET. This adds all the necessary files and executables to enable .NET support. The thing is, you can already do that by simply dragging and dropping the .NET-supported version from the [official website](https://godotengine.org/download/windows/) into the Godot installation folder and renaming `Godot_v4.3-stable_mono_win64.exe` to `godot.windows.opt.tools.64.exe` (replacing the existing one).

However, doing so breaks Steam's playtime tracking. It works fine until you open a project and the project list closes, and so does Steam's playtime tracking. I don't have a solid idea of why this happens.

The `godot.windows.opt.tools.64.exe` here is simply a wrapper for `Godot_v4.3-stable_mono_win64.exe` with an endless timer loop that forces Steam to continue recognizing the app as still running, even when the project list has been closed. It's a hacky workaround, but I, as a software developer, must find the most obscure problems and find an appropriately janky solution for it.

# How to use
1. Download `godot.windows.opt.tools.64.exe` from the Releases page.
2. [Download the .NET-supported Godot version from the official website](https://godotengine.org/download/windows/) and extract it anywhere you like. You can delete the original ZIP file if you want.
3. Go to your Godot installation folder.
4. (Optional) Rename the existing `godot.windows.opt.tools.64.exe` to something like `godot.windows.opt.tools.64_BACKUP.exe`. You can revert to this anytime should anything go wrong.
5. Paste all the downloaded files into the installation folder. If you haven't done step 4, you will be prompted to replace the existing EXE; click "Yes".
6. (Optional) Create a copy of the `godot.windows.opt.tools.64.exe` you just pasted and rename it to something like `godot.windows.opt.tools.64_WRAPPER.exe`. See [automatic Steam updates](https://github.com/DefinitelyRus/SteamPlaytimeTrackingForGodotDotnet?tab=readme-ov-file#automatic-steam-updates) for why.
7. Launch Godot on Steam like normal!

*Certified **WORKS ON MY MACHINE**!*

# NOTICE
I used [BAT2EXE](https://www.bat2exe.net/) to convert the BAT file found next to this README file. **I have no idea if it's safe**, but it got Godot running like I wanted and my computer has not exploded yet so I'm happy.

If you want to be extra safe, feel free to just read through and convert the batch file yourself using any tool that does the same job. I have not modified any of the executables or files that I downloaded, but I encourage you to be safe regardless and do it yourself.

# Automatic Steam Updates
It's likely that Steam will replace the wrapper executable with a new one whenever a new update is released. Since there's no way (that I know of) to disable automatic updates for Godot on the main branch, I highly suggest doing step 6 on [How to use](https://github.com/DefinitelyRus/SteamPlaytimeTrackingForGodotDotnet?tab=readme-ov-file#how-to-use).
