!/bin/bash
reset

echo "Creating output folder to Desktop/CombinedText and final passwordlist will show up as Final0Duplicates.txt"

##Functions##


##output file detection and creation##


function Dependency_Check
{
    file2='~/Desktop/backupwordlist'
    if [ ! -f "$file2" ]
        touch "$file2"
    file2='~/Desktop/CombinedText'
    if [ ! -f "$file3" ]
        touch "$file3"
}
## sort and merge .txt files and list files##

function Combined_Sort 
{
##checks if file1 is not in directory##
 file1='Final.list'
 if [ ! -f "$file1" ]
    then
        echo "$file1 is not present"
        echo -e "\e[41m\e[5m[+]-------------------creating $file1 and adding all .txt files to it-----------[+]\e[0m"
        cat *.txt > Final.txt
        reset
        ##text_Troll
        sleep 2s
        echo -e "\e[42m\e[5m[+]-------------------Working on Final List-------------------------------------[+]\e[0m"
        cat Final.txt > Final.list
        reset
        echo -e "\e[42m\e[5m[+]--------final list finished removing 1.list-------[+]\e[0m"
        echo -e "\e[41m\e[5mremoving Duplicates from Final list\e[0m"
        sleep 10s
        reset
        sort -u Final.list > Final0Duplicates.txt
        find . -name Final0Duplicates.txt -exec cp {} ~/Desktop/backupwordlist \;
        sleep 10s
 else
        echo "$file1 is present"
        echo "combining list files to 2.txt"
        cat *.list > 2.txt
        sleep 30s
        reset
        sleep 20s
        echo "Working on Final List"
        cat *.txt > Final.list
        echo "final list finished removing 1.list"
        echo "removing Duplicates from Final list"
        sort -u Final.list > Final0Duplicates.txt
        find . -name Final0Duplicates.txt -exec cp {} ~/Desktop/backupwordlist \;
        sleep 10s

 fi
}

##Crawls all subdirectories and extracts txt documents to desktop folder##


function crawl
{

    find . -name \*.txt -exec cp {} ~/Desktop/CombinedText \;
}


reset
crawl
reset
echo "crawling"
Dependency_Check
echo "Creating Dependency Folder on desktop "
Combined_Sort
echo "All Text Documents have been Combined and sorted."
sleep 6
