' BUBBLE SORT IN VISUAL BASIC

Module Bubble_Sort

	' function algorithm that returns the sorted array
	' algoritmo da função que retorna o array ordenado
	Function bubbleSort(ByVal ParamArray arr As Integer()) As Integer()
		Dim n As Integer = arr.Length
		Dim swapped As Boolean

		Do
			swapped = false
			n -= 1

			For i As Integer = 0 To n - 1
				If arr(i) > arr(i + 1) Then
					Dim swap As Integer = arr(i)
					arr(i) = arr(i + 1)
					arr(i + 1) = swap
					swapped = true
				End If
			Next
		Loop Until swapped = false

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