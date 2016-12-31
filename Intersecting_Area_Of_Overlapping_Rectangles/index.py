inputRect1 = raw_input("Enter your first rectangle: ").split(" ")
inputRect2 = raw_input("Enter your second rectangle: ").split(" ")

rect1 =  [map(float, inputRect1[0].split(',')),map(float, inputRect1[1].split(','))]
rect2 =  [map(float, inputRect2[0].split(',')), map(float, inputRect2[1].split(','))]

maxX = max(min(rect1[1][0], rect2[1][0]), min(rect1[0][0], rect2[0][0]))
maxY = max(min(rect1[1][1], rect2[1][1]), min(rect1[0][1], rect2[0][1]))

minX = min(max(rect1[1][0], rect2[1][0]), max(rect1[0][0], rect2[0][0]))
minY = min(max(rect1[1][1], rect2[1][1]), max(rect1[0][1], rect2[0][1]))

area = abs((maxX - minX) * (maxY - minY)) if abs(maxX) > abs(minX) else 0
print "Area: " + str(area)
