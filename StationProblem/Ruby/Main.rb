puts "Introduce source station: "
# srcStation = gets

puts "Introduce destination station: "
# dstStation = gets


stations = []
# ------------------------------------------
aFile = File.new("stations","r")
if aFile
	
	while (srcStation = aFile.getc)

		aFile.getc
		aFile.getc
	
		colourSrcStation = ""
		while ((ch = aFile.getc) != ",")
			colourSrcStation += ch
		end

		aFile.getc

		dstStation = aFile.getc

		aFile.getc
		aFile.getc

		colourDstStation = ""

		while ((ch = aFile.getc) != ",")
			colourDstStation += ch
		end

		aFile.getc

		distance = ""
		while ((ch = aFile.getc) != "\n")
			distance += ch
		end
	
		#aFile.getc
		#aFile.getc
	
		#puts srcStation
		#puts colourSrcStation

		#puts dstStation
		#puts colourDstStation

		#puts distance

		if !stations[srcStation.ord - 65]
			stations[srcStation.ord - 65] = {'tracks' => [colourSrcStation], 
																		'connected_to' => [{'station' => dstStation, 'distance' => distance}] }

		else

			if !stations[srcStation.ord - 65]['tracks'].include?(colourSrcStation)
				stations[srcStation.ord - 65]['tracks'].push colourSrcStation
			end
			
			if !stations[srcStation.ord - 65]['tracks'].include?(colourDstStation)
				stations[srcStation.ord - 65]['tracks'].push colourDstStation
			end
	
			if srcStation != dstStation

				newStationConnected = {'station' => dstStation, 'distance' => distance}
				stations[srcStation.ord - 65]['connected_to'].push newStationConnected
			end
		end
	end
else
	puts "Unable to open file!"
end

aFile.close
#-------------------------------------------
p stations['Z'.ord - 65]
puts "------------------"
p stations['A'.ord - 65]
puts "------------------"
p stations['G'.ord - 65]
puts "------------------"
p stations['K'.ord - 65]
puts "------------------"
p stations['M'.ord - 65]

