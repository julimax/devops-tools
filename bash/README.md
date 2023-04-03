
# bash commands

## ls

### see directory with hidden files (a) in list (l) and size (h)

    ls -alh

### some options:

| Option | Action 
|:------:|:-------------------------------------------------------:
| -l     | show adittional info
| -i     | shows i-node number and the name of the contained files
| -r     | shows the list of files with reverse name order
| -r     | show file system
| -a     | includes hidden files

---

## output redirect

### the output of a command is stored in a file instead of being seen on the screen.

#### in the file exists, overwrite it

    command > path/namefile

#### in the file exists, add the content

    command >> path/namefile

#### in the both modes, if the file does not exist it is creeated

---

## echo

### console output

#### code

    echo "hello world"

#### output

    "hello world"

---

## filters

### grep

#### locate lines containing a certain string

    grep "string" path

#### locate lines beginning a certain string

    grep '^string' path

#### other example: locate lines whose fourth character is the letter "r"

    grep '^...r' path

### find

#### search files according to a certain search pattern

| Pattern             | Seach result
|:-------------------:|:------------------------------------:
| -name namefile      | find with namefile
| -type f             | regular files
| -type d             | directories
| -atime -n           | files accessed in the last "n" days
| -mtime -n           | files modified in the last "n" days
| -inum i-nodenumber  | find with i-node number

---

## chmod

### change access permissions of a file

| User Level | Permissions
|:-----------|-------------:
| u: owner   | r: read
| g: group   | w: write
| o: others  | x: execute

### absolute mode: at the mentioned user level, the permissions that are mencioned are activated and the others are denied

    chmod g=x, u=rx path/namefile

    group: execute activated, read and write denied
    owner: read and execute activated, write denied
    others: permissions unchanged

### symbolic mode: add or remove the indicated permissions and leave the others unchanged

    chmod go+x, u-w path/namefile

    group and others add execute permission
    owner loses wirte permission

### numeric mode: all permissions are dessigned. The modes are represented by 3-digit octal (one for each user level)

    chmod 456 path/namefile

    owner: 4(100): read activated, write and execute denied
    group: 5(101): read and execute activated, write denied
    others: 6(110): read and write activated, execute denied

| permission | decimal
|:----------:|:---------:
| ---        | 0
| --x        | 1
| -w-        | 2
| -wx        | 3
| r--        | 4
| r-x        | 5
| rw-        | 6
| rwx        | 7

---

## cmp

### compare the text stored en two files: reports character number and line number of the first difference. if the text are same, it does not generate output

    cmp path/namefile1 path/namefile2

---

## diff

### display(do not perform) the changes that must be made to the text in the first file to make it equal to the text in the second file

    diff path/namefile1 path/namefile2

---

## file compression

### gzip

#### compress

    gzip compressionfactor path/filename

#### the compression factor is a value between -1 and -9

| Compression Factor | Actuate
|:-------------------|-----------------------------:
| -1                 | less compressed, faster
| -9                 | more compressed, less fast

#### if the factor is omitted, it will be compressed to an intermediate level, close to -6

### zcat

#### display the content of a compressed file

    zcat namefile.gz

### gunzip

#### decompress

    gunzip namefile.gz

---

## arguments

### we use the $ sign followed by the position of that argument

#### example:

#### command

    bash script.sh eric

#### code

    echo "hello world $1"

#### output

    "hello world eric"

#### for many arguments we use $@
---

## conditional

### if and else

#### command

    bash script.sh 11

#### code

    if [ $1 == 10 ]; then
        echo your answer is 10
    else
        echo your answer is diferent than 10
    fi

#### output

    your answer is different than 10

---

## operator

| Operator | Meaning 
|:--------:|:-----------------:
| -lt      | less than (<)
| -gt      | greater than (>) 
| -le      | less than or equal to (<=)
| -ge      | greater than or equal to (>=)
| -eq      | equal (==)
| -ne      | not equal (!=)

---

## loop

### while

#### structure

    while [ condition ]
    do
        actions
    done


#### example

    n=1 
    while [ $n -le 5 ]
    do
        echo "Running $n time"
        (( n++ ))
    done

#### output

    Running 1 time
    Running 2 time
    Running 3 time
    Running 4 time
    Running 5 time

### until

#### structure 

    until [ condition ]
    do
        actions
    done

#### example

    c=0
    until [ $c -gt 5 ]
    do
        echo c: $c
        ((c++))
    done

### while getops

#### we can insert options

### example

#### code

    while getopts "ab" FLAG
    do
            case "$FLAG" in
                    a)
                            echo "you chose a"
                            ;;
                    b)
                            echo "you chose b"
                            ;;
                    *)
                            echo "plese select 'a' or 'b'"
                            ;;
            esac
    done

#### command

    bash script.sh -b

#### output

    you chose b

### insert and return argument with while getopts and {OPTARG} placing ":" after each option that we assign

#### example:

#### code

    while getopts "a:b:" FLAG
    do
            case "$FLAG" in
                    a)
                            echo "you chose a"
                            echo "the argument of a is ${OPTARG}"
                            ;;
                    b)
                            echo "you chose b"
                            echo "the argument of b is ${OPTARG}"

                            ;;
                    *)
                            echo "plese select 'a' or 'b'"
                            ;;
            esac
    done

#### command

    bash script.sh -a hi

#### output

    you chose a
    the argument of 'a' is hi


### for

#### structure

    for i in 'command'
        do
            actions
    done

#### example

    for i in 'ls $dir'
        do
            if [ -f $dire/$i ]
                then
                    echo "The content of the file is: "
                    more $dire/$i
            fi
        done

### case

#### example:

#### code

    case "${1}" in
        start)
                echo "you ran start"
                ;;
        finsih)
                echo "you ran finish"
                ;;
        *)
                echo "invalid argument"
    esac

#### command

    bash script.sh finish

#### output

    you ran finish