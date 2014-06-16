$!      login.com / maegg
$!      2014/01/22
$       if f$mode() .nes. "INTERACTIVE" THEN exit
$
$       set term /inquire
$       set term /insert
$       set term /width=80
$       set proc /units=bytes
$       set prompt
$       set control=(t,y)
$
$       clear :== type /page nl:
$       home :== set def sys$login
$       more :== type/page
$       who :== show users
$       sd :== show def
$       ll :== dir /size/date=mod
$       syspriv :== "@sys$login:syspriv.com" 
$
$       gosub banner
$       exit
$
$
$ banner:
$       TYPE sys$input
..#######..########..########.##....##.##.....##.##.....##..######.
.##.....##.##.....##.##.......###...##.##.....##.###...###.##....##
.##.....##.##.....##.##.......####..##.##.....##.####.####.##......
.##.....##.########..######...##.##.##.##.....##.##.###.##..######.
.##.....##.##........##.......##..####..##...##..##.....##.......##
.##.....##.##........##.......##...###...##.##...##.....##.##....##
..#######..##........########.##....##....###....##.....##..######.


$       SHOW TIME
$
$       return

