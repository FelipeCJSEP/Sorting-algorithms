' INSERTION SORT IN VISUAL BASIC

Module Insertion_Sort
	' function algorithm that returns the sorted array
	' algoritmo da função que retorna o array ordenado
	Function insertionSort(ByVal ParamArray arr As Integer()) As Integer()
		For i As Integer = 1 To arr.Length - 1
			Dim j As Integer = i

			While j > 0
				If arr(j) < arr(j - 1)
					Dim swap As Integer = arr(j)
					arr(j) = arr(j - 1)
					arr(j - 1) = swap
					j -= 1
				Else
					j = 0
				End If
			End While
		Next

		Return arr
	End Function

	' main function only to call and test the sort function
	' função principal apenas para chamar e testar a função de ordenação
	Sub Main()
		Dim arr As Integer() = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
		Dim sortedArr As Integer() = insertionSort(arr)

		Console.WriteLine("Sorted Array:")

		For Each a As Integer In sortedArr
			Console.WriteLine(a)
		Next
	End Sub
End Module