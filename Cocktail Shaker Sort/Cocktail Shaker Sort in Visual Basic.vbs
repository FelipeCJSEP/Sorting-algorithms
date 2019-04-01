' COCKTAIL SHAKER SORT IN VISUAL BASIC

Module Cocktail_Shaker_Sort
	' function algorithm that returns the sorted array
	' algoritmo da função que retorna o array ordenado
	Function cocktailShakerSort(ByVal ParamArray arr As Integer()) As Integer()
		Dim beginIndex As Integer = 0
		Dim endIndex As Integer = arr.Length
		Dim swapped As Boolean

		Do
			swapped = false
			endIndex -= 1

			For i As Integer = beginIndex To endIndex - 1
				If arr(i) > arr(i + 1) Then
					Dim swap As Integer = arr(i)
					arr(i) = arr(i + 1)
					arr(i + 1) = swap
					swapped = true
				End If
			Next

			If swapped = true Then
				swapped = false
				beginIndex += 1

				For i As Integer = endIndex - 1 To beginIndex Step -1
					If arr(i) < arr(i - 1) Then
						Dim swap As Integer = arr(i)
						arr(i) = arr(i - 1)
						arr(i - 1) = swap
						swapped = true
					End If
				Next
			End If
		Loop Until swapped = false

		Return arr
	End Function

	' main function only to call and test the sort function
	' função principal apenas para chamar e testar a função de ordenação
	Sub Main()
		Dim arr As Integer() = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
		Dim arrSorted As Integer() = cocktailShakerSort(arr)

		Console.WriteLine("Array Sorted:")

		For Each a As Integer In arrSorted
			Console.WriteLine(a)
		Next
	End Sub
End Module