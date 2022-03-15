#!/bin/bash

#import functions
source functions.sh
FILE=$1

arr=( "Insert record" "Delete record" "Search record" "Update record Name" "Update record Amount" "Print All record Amount" "Print Sort record" "Euser_inputit" )
 echo ""
 echo "=========== Menue ============"
 echo ""
 echo "1. Insert cd "
 echo "2. Delete cd "
 echo "3. Search cd"
 echo "4. Update cd Name"
 echo "5. Update cd Amount"
 echo "6. Print All cd Amount"
 echo "7. Print Sort CD"
 echo "8. Exit"
 echo ""
 echo "=============================="
arr=( "Insert record" "Delete record" "Search record" "Update record Name" "Update record Amount" "Print All record Amount" "Print Sort record" "Euser_inputit" )
while true; do
        read -p "please choose an option between 1-8: " user_input
        case $user_input in
                1)Insert_record_function ;;
                2)
                   read -r -p "Are you sure you want to delete? [y/N] " response
                   case "$response" in
                   [Yy])
                   #DELETE FUNCTION
                   Delete_record_function
                   ;;
                   *) echo " delete function cancelled"                 
                   ;;
                   esac
                   ;;
                3)Search_string_in_file ;;
                4)Update_record_name_function ;;
                5)Update_record_amount_function ;;
                6)Print_total_amount_function ;;
                7)Print_sorted_record_file_function ;;
                8) exit ;;
                *)echo "Invalid number"
        esac
done
