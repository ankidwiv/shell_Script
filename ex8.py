#!/usr/bin/python

formatter = "%r %r %r %r"
distributor = "%s%s%s"

print formatter % ( 1,2,3,4 )
print formatter % ( "one" , "two" , "three" , "four")
print formatter % ( True, False, False, True)
print formatter % ( distributor, formatter, distributor, formatter)
print formatter % (
        " I had this things.",
                "That you could type up right.",
               "But it didn't sign.",
               "So I said goodnight."
               )
              
