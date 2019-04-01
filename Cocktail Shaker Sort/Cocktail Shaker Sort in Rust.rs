// COCKTAIL SHAKER SORT IN RUST

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fn cocktail_shaker_sort(mut _arr: Vec<i32>) -> Vec<i32>
{
	let mut begin_index = 0;
	let mut end_index = _arr.iter().count();

	loop
	{
		let mut swapped = false;
		end_index -= 1;

		for i in begin_index..end_index
		{
			if _arr[i] > _arr[i + 1]
			{
				_arr.swap(i, i + 1);
				swapped = true;
			}
		}

		if swapped
		{
			swapped = false;
			begin_index += 1;

			for i in (begin_index..end_index).rev()
			{
				if _arr[i] < _arr[i - 1]
				{
					_arr.swap(i, i - 1);
					swapped = true;
				}
			}
		}

		if !swapped
		{
			break;
		}
	}

	return _arr;
}

// main function only to call and test the sort function
// função principal apenas para chamar e testar a função de ordenação
fn main()
{
	let arr: Vec<i32> = vec![5, 2, -3, 10, 23, 99, -1, 7, 93, 0];
	let arr_sorted: Vec<i32> = cocktail_shaker_sort(arr);
	
	println!("Array Sorted");

	for a in arr_sorted
	{
		println!("{}", a);
	}
}