' BUBBLE SORT IN VISUAL BASIC

Module Bubble_Sort

	' function algorithm that returns the sorted array
	' algoritmo da função que retorna o array ordenado
	Function bubbleSort(ByVal ParamArray arr As Integer()) As Integer()
		For i As Integer = 0 To arr.Length - 2
			For j As Integer = i + 1 To arr.Length - 1
				If arr(i) > arr(j) Then
					Dim swap As Integer = arr(i)
					arr(i) = arr(j)
					arr(j) = swap
				End If
			Next
		Next

		Return arr
	End Function

	' main function only to call and test the sort function
	' função principal apenas para chamar e testar a função de ordenação
	Sub Main()
		Dim arr As Integer() = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
		Dim arrSorted As Integer() = bubbleSort(arr)

		Console.WriteLine("Array Sorted:")

		For Each a As Integer In arrSorted
			Console.WriteLine(a)
		Next
	End Sub
End Module