#!/bin/bash
# COCKTAIL SHAKER SORT IN BASH

# function algorithm that returns the sorted array
# algoritmo da função que retorna o array ordenado
cocktailShakerSort()
{
	local arr=("$@")
	local beginIndex=0
	local endIndex=${#arr[@]}

	while true; do
		local swapped=false
		endIndex=$(($endIndex-1))

		for i in `seq $beginIndex $(($endIndex - 1))`; do
			if ((${arr[$i]} > ${arr[$i+1]})); then
				local swap=${arr[$i]}
				arr[$i]=${arr[$i+1]}
				arr[$i+1]=$swap
				swapped=true
			fi
		done

		if $swapped = true; then
			swapped=false
			beginIndex=$(($beginIndex+1))

			for i in `seq $(($endIndex - 1)) -1 $beginIndex`; do
				if ((${arr[$i]} < ${arr[$i-1]})); then
					local swap=${arr[$i]}
					arr[$i]=${arr[$i-1]}
					arr[$i-1]=$swap
					swapped=true
				fi
			done
		fi

		[ $swapped = false ] && break
	done

	echo ${arr[@]}
}

# code only to call and test the sort function
# código apenas para chamar e testar a função de ordenação
arr=(5 2 -3 10 23 99 -1 7 93 0)
arrSorted=(`echo $(cocktailShakerSort ${arr[@]})`)

echo "Array Sorted"

for a in ${arrSorted[@]}; do
	echo $a
done