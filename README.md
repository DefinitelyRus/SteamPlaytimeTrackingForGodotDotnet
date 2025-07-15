# Godot .NET Time Tracker for Steam
**Godot .NET Time Tracker for Steam** allows your Steam client to detect Godot .NET and track playtime hours!

# But why
This tool is for those who want to code in C# while still being able to their their playtime. However, these two things are mutually exclusive, at least out of the box.

The Steam edition of Godot does not natively support .NET. You can enable that by simply dragging over the .NET files from the [official website](https://godotengine.org/download/windows/) into the Godot installation folder, but Steam will still attempt to launch the non-.NET executable. You can rename the .NET Godot executable, but this stops working the moment you open a project, hence why I made this tool.

The `godot.windows.opt.tools.64.exe` here is simply a wrapper for `Godot_v4.X-stable_mono_win64.exe` that acts as a proxy, telling Steam that Godot is indeed still running. It does nothing else beyond that.

# How to use
1. Download `godot.windows.opt.tools.64.exe` from the Releases page.
2. [Download the .NET-supported Godot version from the official website](https://godotengine.org/download/windows/) and extract it anywhere you like. You can delete the original ZIP file if you want.
3. Go to your Godot installation folder, probably at `C:\Program Files (x86)\Steam\steamapps\common\Godot Engine`.
4. (Optional) Rename the **existing** `godot.windows.opt.tools.64.exe` to something like `godot.windows.opt.tools.64.exe.BACKUP`. You can revert to this anytime should the wrapper start behaving unexpectedly.
5. Paste **all** the downloaded files into the installation folder. If you haven't done step 4, you will be prompted to replace the existing EXE; click "Yes".
6. (Optional) Create a copy of the **new** `godot.windows.opt.tools.64.exe` you just pasted and rename it to something like `godot.windows.opt.tools.64.exe.WRAPPER`. [Here's why](https://github.com/DefinitelyRus/SteamPlaytimeTrackingForGodotDotnet?tab=readme-ov-file#automatic-steam-updates).
7. Launch Godot on Steam like normal!

*Certified **WORKS ON MY MACHINE**!*

# NOTICE
If you want to be extra safe, feel free to just read through and convert the batch file yourself using any tool that does the same job.
I used Windows' built-in `iexpress` tool for making executables. See [on Superuser forums](https://superuser.com/a/868341) how to use it.

# Automatic Steam Updates
If you're not on any "beta" version of Godot on Steam, it's very likely that Steam will replace the wrapper executable with a new one whenever a new update is released. Since there's no way (that I know of) to disable automatic updates for Godot on the main branch, I highly suggest doing step 6 on [How to use](https://github.com/DefinitelyRus/SteamPlaytimeTrackingForGodotDotnet?tab=readme-ov-file#how-to-use).

I'll consider making wrappers for all stable releases in the beta branches. In the meantime, if you're on a beta branch, just modify the batch file and make your own EXE. :)
