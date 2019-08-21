' BINARY INSERTION SORT IN VISUAL BASIC

Module Binary_Insertion_Sort
	' function algorithm that returns the sorted array
	' algoritmo da função que retorna o array ordenado
	Function binaryInsertionSort(ByVal ParamArray arr As Integer()) As Integer()
		For i As Integer = 1 To arr.Length - 1
			Dim selected As Integer = arr(i)
			Dim first As Integer = 0
			Dim last As Integer = i - 1
			Dim mid As Integer
			Dim j As Integer

			While first <= last
				mid = (first + last) \ 2

				If selected > arr(mid)
					first = mid + 1
				Else
					last = mid - 1
				End If
			End While

			If selected > arr(mid)
				mid += 1
			End If

			j = i - 1
			
			While j >= mid
				arr(j + 1) = arr(j)
				j -= 1
			End While

			arr(j + 1) = selected
		Next

		Return arr
	End Function

	' main function only to call and test the sort function
	' função principal apenas para chamar e testar a função de ordenação
	Sub Main()
		Dim arr As Integer() = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
		Dim sortedArr As Integer() = binaryInsertionSort(arr)

		Console.WriteLine("Sorted Array:")

		For Each a As Integer In sortedArr
			Console.WriteLine(a)
		Next
	End Sub
End Module
