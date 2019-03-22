// BUBBLE SORT IN RUST

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fn bubble_sort(mut _arr: Vec<i32>) -> Vec<i32>
{
	for i in 0.._arr.iter().count() - 2
	{
		for _j in i + 1.._arr.iter().count() - 1
		{
			if _arr[i] > _arr[_j]
			{
				let swap = _arr[i];
				_arr[i] = _arr[_j];
				_arr[_j] = swap;
			}
		}
	}

	return _arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fn main()
{
	let arr: Vec<i32> = vec![5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	let arr_sorted: Vec<i32> = bubble_sort(arr);
	
	println!("Array Sorted");

	for a in arr_sorted
	{
		println!("{}", a);
	}
}