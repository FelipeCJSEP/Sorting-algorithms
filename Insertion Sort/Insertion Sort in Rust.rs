// INSERTION SORT IN RUST

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fn insertion_sort(mut _arr: Vec<i32>) -> Vec<i32>
{
	for i in 1.._arr.iter().count()
	{
		let mut j = i;

		while j > 0 && _arr[j] < _arr[j - 1]
		{
			_arr.swap(j, j - 1);
			j -= 1;
		}
	}

	return _arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fn main()
{
	let arr: Vec<i32> = vec![5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	let arr_sorted: Vec<i32> = insertion_sort(arr);
	
	println!("Sorted Array:");

	for a in arr_sorted
	{
		println!("{}", a);
	}
}
