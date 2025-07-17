# OSDCloud-Scripts
This is a simple cleanup script for use with OSDCloud v1.

### Mode of operation
First, a shutdown script modifies `SetupComplete.ps1` to prevent logging while in the SetupComplete phase.

Next, `SetupComplete.cmd` calls `cleanup.ps1`, and since there is no file lock on `C:\OSDCloud\Logs\SetupComplete.log`, the script is able to run cleanly and remove the entire `C:\OSDCloud` folder.

This is all accomplished with scripts added to `<USB_Drive>:\OSDCloud\Config\Scripts\`. No modification to the WinPE boot image is necessary.