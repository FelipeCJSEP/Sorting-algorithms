// BINARY INSERTION SORT IN RUST

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fn binary_insertion_sort(mut _arr: Vec<i32>) -> Vec<i32>
{
	for i in 1.._arr.iter().count()
	{
		let selected = _arr[i];
		let mut first: i32 = 0;
		let mut last: i32 = i as i32 - 1;
		let mut mid: i32 = 0;
		let mut j: i32;

		while first <= last
		{
			mid = (first + last) / 2;

			if selected > _arr[mid as usize]
			{
				first = mid + 1;
			}
			else
			{
				last = mid - 1;
			}
		}

		if selected > _arr[mid as usize]
		{
			mid += 1;
		}

		j = i as i32 - 1;

		while j >= mid
		{
			_arr[(j + 1) as usize] = _arr[j as usize];
			j -= 1;
		}

		_arr[(j + 1) as usize] = selected;
	}

	return _arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fn main()
{
	let arr: Vec<i32> = vec![5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	let arr_sorted: Vec<i32> = binary_insertion_sort(arr);
	
	println!("Sorted Array:");

	for a in arr_sorted
	{
		println!("{}", a);
	}
}