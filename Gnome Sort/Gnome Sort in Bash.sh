#!/bin/bash
# GNOME SORT IN BASH

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
gnomeSort()
{
	local arr=("$@")
	local i=0

	while [[ $i -le $((${#arr[@]}-1)) ]];
	do
		if [[ $i > 0 ]] && ((${arr[$i]} < ${arr[$i-1]}));
		then
			local swap=${arr[$i]}
			arr[$i]=${arr[$i-1]}
			arr[$i-1]=$swap
			i=$(($i-1))
		else
			i=$(($i+1))
		fi
	done

	echo ${arr[@]}
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr=(5 2 -3 10 23 99 -1 7 93 0)
sortedArr=(`echo $(gnomeSort ${arr[@]})`)

echo "Sorted Array"

for a in ${sortedArr[@]};
do
	echo $a
done