$! maegg/loop.com
$       count = 0
$       open/write log loop.log
$ loop:
$       count = count + 1
$       write sys$output count
$       write log count
$       if count .lt. 10
$       then
$         goto loop
$       endif
$
$       close log
$
$ exit

