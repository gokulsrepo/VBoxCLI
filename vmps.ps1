param(
    [string]$state = "",
    [string]$machine = ""
)

if ($state -ne "") {
    if ($machine -ne "") {
        switch ($state) {
            "start" {
                VBoxManage startvm $machine --type headless
            }
            "save" {
                VBoxManage controlvm $machine savestate
            }
            "shutdown" {
                VBoxManage controlvm $machine poweroff
            }
            "restart" {
                VBoxManage controlvm $machine restart
            }
            "reset" {
                VBoxManage controlvm $machine reset
            }
        }
    }
    elseif ($state -eq "list") {
        VBoxManage list vms
    }
    elseif ($state -eq "rlist") {
        VBoxManage list runningvms
    }
    elseif ($state -eq "help") {
        Write-Host "Note: Add VirtualBox installed Path into the system environments PATH (Default: C:\Program Files\Oracle\VirtualBox\ and restart)"
        Write-Host "Usage: 1) vmps list|help|rlist 2) vmps |start|save|restart|reset|shutdown| machine_name"
        Write-Host "Example1: ./vmps.ps1 list - shows the list of vms you own"
        Write-Host "Example2: ./vmps.ps1 start kali-linux - startup your kali machine from cmd"
    }
}
else {
    Write-Host "Note: Add VirtualBox installed Path into the system environments PATH (Default: C:\Program Files\Oracle\VirtualBox\ and restart)"
        Write-Host "Usage: 1) vmps list|help|rlist 2) vmps |start|save|restart|reset|shutdown| machine_name"
        Write-Host "Example1: ./vmps.ps1 list - shows the list of vms you own"
        Write-Host "Example2: ./vmps.ps1 start kali-linux - startup your kali machine from cmd"
}
