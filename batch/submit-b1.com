$! submit 10x b1
$ i=0
$ start:
$       if i .lt. 10
$       then
$               write sys$output "submitting b1 job ''i'
$               logspec = "sys$sysdevice:[student1.wrk.batch]b1_''i'.log"
$               submit /noprinter /log_file='logspec' /parameters=('i') b1
$               i = i + 1
$               goto start
$       endif
$
$ exit

