		puts "Introduce range to calculate Kaprekar Numbers: "
		rangeKaprekarStringFormat = gets

		rangeKaprekar = rangeKaprekarStringFormat.scan(/[0-9]*/)
		rangeKaprekar.delete_if{|i| i==""}

		startRange = Integer(rangeKaprekar[0])
		endRange = Integer(rangeKaprekar[1])

		for i in startRange..endRange

			squareIndex = String(i**2)

			begin
		
				for j in 0..squareIndex.length
					prefixNum = squareIndex[0 .. j]
					sufixNum = squareIndex[(j+1) .. (squareIndex.length)]

					# Remove octal representation in String, i.e "008" -> "8"
					while prefixNum[0] == '0'
						prefixNum[0] = ''
					end
		
					# Remove octal representation in String, i.e "008" -> "8"
					while sufixNum[0] == '0'
						sufixNum[0] = ''
					end
			
					prefixNum = Integer(prefixNum)
					sufixNum = Integer(sufixNum)

					if (prefixNum + sufixNum)  == i
						puts i
					end
				end
			rescue Exception=>e
			end



		end















