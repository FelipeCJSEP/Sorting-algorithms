' GNOME SORT IN VISUAL BASIC

Module Gnome_Sort
	' function algorithm that returns the sorted array
	' algoritmo da função que retorna o array ordenado
	Function gnomeSort(ByVal ParamArray arr As Integer()) As Integer()
		Dim i As Integer = 0

		While i < arr.Length
			If i > 0
				If arr(i) < arr(i - 1)
					Dim swap As Integer = arr(i)
					arr(i) = arr(i - 1)
					arr(i - 1) = swap
					i -= 1
				Else
					i += 1
				End If
			Else
				i += 1
			End If
		End While

		Return arr
	End Function

	' main function only to call and test the sort function
	' função principal apenas para chamar e testar a função de ordenação
	Sub Main()
		Dim arr As Integer() = {5, 2, -3, 10, 23, 99, -1, 7, 93, 0}
		Dim sortedArr As Integer() = gnomeSort(arr)

		Console.WriteLine("Sorted Array:")

		For Each a As Integer In sortedArr
			Console.WriteLine(a)
		Next
	End Sub
End Module