// BUBBLE SORT IN RUST

// function algorithm that returns the sorted array
// algoritmo da função que retorna o array ordenado
fn bubble_sort(mut _arr: Vec<i32>) -> Vec<i32>
{
	let mut n = _arr.iter().count();

	loop
	{
		let mut swapped = false;
		n -= 1;

		for i in 0..n
		{
			if _arr[i] > _arr[i + 1]
			{
				_arr.swap(i, i + 1);
				swapped = true;
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
	let arr_sorted: Vec<i32> = bubble_sort(arr);
	
	println!("Sorted Array:");

	for a in arr_sorted
	{
		println!("{}", a);
	}
}