# VirtualBox VM Manager Script

These scripts provides a convenient way to manage VirtualBox virtual machines (VMs) directly from the command line interface (CLI) using Command Prompt or PowerShell. Users can perform various actions on VMs such as starting, saving, restarting, resetting, or shutting down.

## Note:

### For Batch Script (Command Prompt):
- This script requires VirtualBox to be installed on your system. Before using the script, ensure that the VirtualBox installed path is added to the system environment PATH. By default, it is usually located at `C:\Program Files\Oracle\VirtualBox\`. Restart your system after making changes to the PATH.
- Create a folder and add the scripts to it. To access the script directly from the command prompt or PowerShell, you can also add the folder path to your system environment PATH.
### For PowerShell:
- Follow the above three steps as you did for batch script. Additionally, ensure that you set the execution policy as Unrestricted for CurrentUser scope (Refer the documentation: https:/go.microsoft.com/fwlink/?LinkID=135170).

## Usage:

### Listing VMs:
- To list all owned virtual machines:
```
For Command Prompt:
vm list

For PowerShell:
vmps list
````
- To list running virtual machines:
```
For Command Prompt:
vm rlist

For PowerShell:
vmps rlist
````

### Managing VMs:
- To perform actions on a specific VM, use the following syntax:
Replace `<action>` with one of the following:
- `start`: Start the VM.
- `save`: Save the VM state.
- `restart`: Restart the VM.
- `reset`: Reset the VM.
- `shutdown`: Shutdown the VM.

Replace `<machine_name>` with the name of the virtual machine.

- Examples:
- Start a VM named `kali-linux`:
```
For Command Prompt:
vm start kali-linux

For PowerShell:
vmps start kali-linux
````
### Additional Information:
- Before using the script, ensure that the VirtualBox installed path is added to the system environment PATH. By default, it is usually located at `C:\Program Files\Oracle\VirtualBox\`. Restart your system after making changes to the PATH.
- For further assistance, use the `help` command:
```
For Command Prompt:
vm help

For PowerShell:
vmps help
````
Feel free to modify and improve the script according to your requirements. Contributions are welcome!
