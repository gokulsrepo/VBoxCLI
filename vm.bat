@echo off

goto :main
:main
    set state=%1
    set machine=%2

    if not "%state%"=="" (
        if not "%machine%"=="" ( 

            if "%state%"=="start" (
                VBoxManage startvm %machine% --type headless
            )
            if "%state%"=="save" (
                VBoxManage controlvm %machine% savestate
            )
            if "%state%"=="shutdown" (
                VBoxManage controlvm %machine% poweroff
            )
            if "%state%"=="restart" (
                VBoxManage controlvm %machine% restart
            )
            if "%state%"=="reset" (
                VBoxManage controlvm %machine% reset
            )
            
        ) else if "%state%"=="list" (
            VBoxManage list vms
        ) else if "%state%"=="rlist" (
            VBoxManage list runningvms
        ) else if "%state%"=="help" (
                echo "Note: Add VirtualBox installed Path into the system environments PATH (Default: C:\Program Files\Oracle\VirtualBox\ and restart)"
                echo "Usage: 1) vm list|help|rlist 2) vm |start|save|restart|reset|shutdown| machine_name"
                echo "Example1: ./vm.bat list - shows the list of vms you own"
                echo "Example2: ./vm.bat start kali-linux - startup your kali machine from cmd"
            ) 
    ) else (
                echo "Note: Add VirtualBox installed Path into the system environments PATH (Default: C:\Program Files\Oracle\VirtualBox\ and restart)"
                echo "Usage: 1) vm list|help|rlist 2) vm |start|save|restart|reset|shutdown| machine_name"
                echo "Example1: ./vm.bat list - shows the list of vms you own"
                echo "Example2: ./vm.bat start kali-linux - startup your kali machine from cmd"
            ) 
goto :eof
