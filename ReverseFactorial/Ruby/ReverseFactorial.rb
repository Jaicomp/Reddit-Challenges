		def getReverseFactorial(num)
	
			counter = 1
			while num > 1
				num /= counter.to_f
				counter += 1
			end

			return num == 1 ? counter - 1 : "NONE" 


		end

		while num = (gets).chomp.to_i 
	
			print num, " = ", getReverseFactorial(num), "!\n"

		end

