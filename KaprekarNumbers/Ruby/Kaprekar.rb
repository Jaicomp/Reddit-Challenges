puts "Introduce range to calculate Kaprekar Numbers: "
rangeKaprekarStringFormat = gets

rangeKaprekar = rangeKaprekarStringFormat.scan(/[0-9]*/)
rangeKaprekar.delete_if{|i| i==""}

startRange = Integer(rangeKaprekar[0])
endRange = Integer(rangeKaprekar[1])

for i in startRange..endRange

	squareIndex = String(i**2)

	begin
		
		prefixNum = squareIndex[0 .. (squareIndex.length/2 - 1)]
		sufixNum = squareIndex[(squareIndex.length/2) .. (squareIndex.length)]

		# Remove octal representation in String, i.e "008" -> "8"
		index = 0
		while prefixNum[index] == '0'
			prefixNum[index] = ''
			index += 1
		end
		
		# Remove octal representation in String, i.e "008" -> "8"
		index = 0
		while sufixNum[index] == '0'
			sufixNum[index] = ''
			index += 1
		end

		prefixNum = Integer(prefixNum)
		sufixNum = Integer(sufixNum)

		if (prefixNum + sufixNum)  == i
			puts i
		end
	rescue Exception=>e
	end



end















