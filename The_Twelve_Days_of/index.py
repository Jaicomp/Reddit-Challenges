
gifts = ["Partridge in a Pear Tree",
        "Turtle Doves", 
        "French Hens",
        "Calling Birds",
        "Golden Rings",
        "Geese a Laying",
        "Swans a Swimming",
        "Maids a Milking",
        "Ladies Dancing",
        "Lords a Leaping",
        "Pipers Piping",
        "Drummers Drumming"    
        ]

days = ["first",
        "second",
        "third",
        "fourth",
        "fifth",
        "sixth",
        "seventh",
        "eighth",
        "ninth",
        "tenth",
        "evelenth",
        "twelfth"

        ]

i = 0
while i < len(gifts):
    print "On the " + days[i] + " day of Christmas"
    print "my true love sent to me:"
    j = i
    while j >= 0:
        text = str(j+1) + " " + gifts[j]
        if j == 0:
            text = "and " + text
        print text
        j -= 1

       
    print "\n"
    i += 1





























