# Main

1. Get the latest DXVK from the official GitHub reprisotory <https://github.com/doitsujin/dxvk>
2. Extract d3d9.dll (from the "x32" folder) and rename it into dxvk_d3d9.dll.
3. Replace the original dxvk_d3d9.dll in "\Left 4 Dead 2\bin" (not "\Left 4 Dead 2\left4dead2\bin") folder with the new one, the one from the step 2.
4. Add -vulkan launch option.

## Optional

From the DXVK repository download dxvk.conf and put it next to left4dead2.exe in "\Left 4 Dead 2" folder.
By default all options in the dxvk.conf are commented out with # sign which means they are not active.
If you want to make any of those options active you have to uncomment them by removing # sign.

## How to know is it working?

If left4dead2_d3d9.log file gets created next to left4dead2.exe in "\Left 4 Dead 2" folder, it is working.

## Reverting changes

- Delete left4dead2_d3d9.log (if you have it at all) next to left4dead2.exe in "\Left 4 Dead 2" folder.
- Delete dxvk.conf next to left4dead2.exe in "\Left 4 Dead 2" folder.
- Verify integrity of game files.
