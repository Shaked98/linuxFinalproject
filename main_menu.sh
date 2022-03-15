#! /bin/bash

arr=( "Insert record" "Delete record" "Search record" "Update record Name" "Update record Amount" "Print All record Amount" "Print Sort record" "Euser_inputit" )
echo "1. Insert record "
echo "2. Delete record "
echo "3. Search record"
echo "4. Update record Name"
echo "5. Update record Amount"
echo "6. Print All record Amount"
echo "7. Print Sort record"
echo "8. Quit"
while true; do
        read -p "please choose an option between 1-8: " user_input
        case $user_input in
                1)echo "insert function";;
                2)echo "delete function";;
                3)echo "search function";;
                4)echo "update record name function";;
                5)echo "update record amount function"};;
                6)echo "Print all record amount function";;
                7)echo "Print sort record function";;
                8) Exit ;;
                *)echo "Invalid number"
        esac
done
