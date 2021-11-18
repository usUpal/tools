# bash

1. ```bash
   $ echo "name" > name.txt[ override ]
   $ echo "name" >> name.txt[Append]
   $ wc -l< bash-note.txt [number of lines in the file]
   $ name='elon mask'
   $ number=6
   $ echo "his name is ${name} and he has a ${number} years old son"
   $ cat bash-note.txt| wc -l
   $ echo "there are `wc -l< ./bash-note.txt` lines of code in bash-note.txt"
   $ numOfLines=`wc -l < ./bash-note.txt`
   $ echo "there are ${numOfLines} lines of code in bash-note.txt"
         [day-1 finished]
   $Arguments: 
   $ $NAME=$1, $2 .... | $#: number of arguments | 
   $ echo $(pwd) || echo 'pwd' -> both works same
   $ and = '&&' ; or = '||'; equal: '='; notEqual: '!='; < ; > ; <= ; >= ; (($str1 == $str2)): string comparasion
   $ '-n' -> not null
   $ '-z' -> zero length
   $ sudo !! [[run previous command with sudo]] | ctrl+u to kill the cursor, sudo, ctrl+y to get killed commands
   ```

2. 