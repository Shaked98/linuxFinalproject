#! /bin/bash

Insert_record_function ()
{
# as input:record_name
# as input:record_amount
        # check valid string
        read -p "Insert Record Name: " rcd
        record_name_vld_function  $rcd
        while [ ! $rcdchk ]
        do
                read -p "Invalid Record Name. Insert Record Name:" rcd
                record_name_vld_function $rcd
        done
        # check valid number
        read -p "Insert Amount of Copies: " amount
        amount_vld_function $amount
        while [ ! $numchk ]
        do
                read -p "Insert Amount of Copies: " amount
                amount_vld_function $amount
        done

        Search_string_in_file $rcd
        if [ -z $record_name ]
        then
                echo "$rcd,$amount" >> $FILE
                #log new record
                echo "log new record $rcd,$amount"
        else
                PS3="Select existing record or N - new record: "
                select var in $record_name
                do
                        case $REPLY in
                        N|n|new) echo "$rcd,$amount" >> $FILE
                        #log new record
                        echo "log new record $rcd,$amount"; break
                        ;;
                        *) Update_record_amount_function; break
                        ;;
                        esac
                done
        fi



}

Delete_record_function ()
{
# as input:record_name
# as input:record_amount

}

Search_string_in_file ()
{
# as input:str


}

Update_record_name_function ()
{
# as input:record_name
# as input:new_record_name




}

Update_record_amount_function ()
{
# as input:record_name
# as input:record_amount



}

Print_total_amount_function ()
{
# no input parameters

}

Print_sorted_record_file_function ()
{
# no input parameters

}

Write_to_record_log_function ()
{
#input: ff_log_operaion_name (insert,delete,search,updateName,...)
#input: f_log_status if passed or failed


}
record_name_vld_function()
{ 
#input:expression 
        REGEX="^[[:alnum:][:space:]]*$"
        if [[ $1 =~ $REGEX ]]
        then
                rcdchk=true
        else
                echo "invalid input"
                rcdchk=false
        fi
}

amount_vld_function()
{ 
#input: expression
        REGEX='^[[:digit:]]+$'
        if [[ $1 =~ $REGEX ]]
        then
                numchk=true
        else
                numchk=false
        fi


}




