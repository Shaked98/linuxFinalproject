#! /bin/bash

Insert_record_function ()
{
# as input:record_name
# as input:record_amount




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
# will take a records_file as input $1

#! /bin/bash
#check if file is empty

if  [ -s $1 ] 
then
	x=$(cat $1 | cut -d "," -f2)
	amount_arr=($x)
	amount_counter=0
	# let size=${#amount_arr[@]}-1
	
	for i in ${amount_arr[@]}
	do
		let amount_counter=$amount_counter+$i
	
	done
	if [ $amount_counter -gt 0 ]
	then 
		echo "the sum of all amounts is $amount_counter"
	fi
	
	

else
	echo "the file $1 is empty" 

fi
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


}

amount_vld_function()
{ 
#input: expression


}




