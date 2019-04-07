' ODD-EVEN SORT IN VISUAL BASIC

Module Odd_Even_Sort
	' function algorithm that returns the sorted array
	' algoritmo da função que retorna o array ordenado
	Function oddEvenSort(ByVal ParamArray arr As Integer()) As Integer()
		Dim swapped As Boolean

		Do
			swapped = false

			For i As Integer = 0 To arr.Length - 2 step 2
				If arr(i) > arr(i + 1) Then
					Dim swap As Integer = arr(i)
					arr(i) = arr(i + 1)
					arr(i + 1) = swap
					swapped = true
				End If
			Next

			For i As Integer = 1 To arr.Length - 2 step 2
				If arr(i) > arr(i + 1) Then
					Dim swap As Integer = arr(i)
					arr(i) = arr(i + 1)
					arr(i + 1) = swap
					swapped = true
				End If
			Next
		Loop Until Not swapped

		Return arr
	End Function

	' main function only to call and test the sort function
	' função principal apenas para chamar e testar a função de ordenação
	Sub Main()
		Dim arr As Integer() = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
		Dim arrSorted As Integer() = oddEvenSort(arr)

		Console.WriteLine("Array Sorted:")

		For Each a As Integer In arrSorted
			Console.WriteLine(a)
		Next
	End Sub
End Module