# 33. A script will receive any number of filenames as arguments. It should check whether such  
# files already exist. If they do, then it       should be reported, if not then check if a         
# subdirectory "mydir" exists or not in the current directory, if it doesnt exist then it         
# should be created and in it the files supplied as arguments should be created. 

if [ $# -eq 0 ]; then
        echo "No Arguments passed"
        exit
fi

for i in $*; do
        # If file exists
        if [ -f $i ]
        then
                echo "$i exists"
        else
                # if "mkdir" exists
                if [ -d "mydir" ]
                then
                     # Directory exists
                     printf ""
                else
                     mkdir mydir
                fi
                touch mydir/$i
                echo "$i file created in \"mydir\""
        fi
done

# Output:


# [ec2-user@ip-172-31-85-227 one]$ ./33.sh xyz.txt qwe.txt sdf.txt
# xyz.txt file created in "mydir"
# qwe.txt file created in "mydir"
# sdf.txt file created in "mydir"
# [ec2-user@ip-172-31-85-227 one]$ ls mydir/
# qwe.txt  sdf.txt  xyz.txt
