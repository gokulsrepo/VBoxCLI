# VirtualBox VM Manager Script

This batch script provides a convenient way to manage VirtualBox virtual machines (VMs) directly from the command line interface (CLI). Users can perform various actions on VMs such as starting, saving, restarting, resetting, or shutting down.

## Note:
- This script requires VirtualBox to be installed on your system. Ensure that VirtualBox commands (`VBoxManage`) are accessible from the command line before using the script.
- Before using the script, ensure that the VirtualBox installed path is added to the system environment PATH. By default, it is usually located at `C:\Program Files\Oracle\VirtualBox\`. Restart your system after making changes to the PATH.

## Usage:

### Listing VMs:
- To list all owned virtual machines:
```
vm list
````
- To list running virtual machines:
```
vm rlist
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
  vm start kali-linux
  ```

### Additional Information:
- Before using the script, ensure that the VirtualBox installed path is added to the system environment PATH. By default, it is usually located at `C:\Program Files\Oracle\VirtualBox\`. Restart your system after making changes to the PATH.
- For further assistance, use the `help` command:
```
vm help
````

Feel free to modify and improve the script according to your requirements. Contributions are welcome!
