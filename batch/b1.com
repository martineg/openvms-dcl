$ if p1 .nes. ""
$ then
$       WRITE sys$output "Job number ''p1'"
$ endif
$ t1 = f$time()
$ WRITE SYS$OUTPUT "''t1' - Hello batch queue"
$ WAIT 00:00:15
$ t2 = f$time()
$ WRITE SYS$OUTPUT "''t2' - Goodbye"
