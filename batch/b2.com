$! re-submit self in one week
$
$ set noon
$ self := sys$sysdevice:[student1.work]b2.com
$ logfile := sys$sysdevice:[student1.work]b2.log
$ submit /queue=sys$batch /noprinter /log_file='logfile' /after="+7-"
$
$! // dummy job
$ SHOW TIME
$
$ exit
