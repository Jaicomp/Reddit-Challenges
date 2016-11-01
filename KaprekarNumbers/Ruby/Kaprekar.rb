puts "Introduce range to calculate Kaprekar Numbers: "
rangeKaprekarStringFormat = gets

rangeKaprekar = rangeKaprekarStringFormat.scan(/[0-9]*/)
rangeKaprekar.delete_if{|i| i==""}

startRange = Integer(rangeKaprekar[0])
endRange = Integer(rangeKaprekar[1])

for i in startRange..endRange

	squareIndex = String(i**2)

	begin
		prefixNum = Integer(squareIndex[0 .. (squareIndex.length/2 - 1)])
		sufixNum = Integer(squareIndex[(squareIndex.length/2) .. (squareIndex.length)])

		if (prefixNum + sufixNum)  == i
			puts i
		end
	rescue Exception=>e
	end



end















