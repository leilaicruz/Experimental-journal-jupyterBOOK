### for changing image to Image in all makrkdown files 
for d in $(ls -d 20*) ; do
    echo "$d"
    cd ./$d
    for file in $(ls ) ; do
      echo "$file"
      sed -i 's/images/Images/g' $file
     
    done
    cd ../

done

