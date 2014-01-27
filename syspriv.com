$! turn syspriv on/off
$!
$!
$       if p1 .eqs. "ON"
$       then
$           set proc/priv=sysprv
$           set prompt="SYSTEM$ "
$           exit 1
$       endif
$       if p1 .eqs. "OFF"
$       then
$           set proc/priv=nosysprv
$           set prompt
$           exit
$       else
$           write sys$output "syspriv on|off"
$           exit
$       endif
$!

