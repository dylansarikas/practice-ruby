blobs = {price: 13, smell: "poor", color: "puke green"}
globs = {price: 12, smell: "okay i guess", color: "can't really describe it"}
slobs = {:price => 14, :smell => "wonderful", :color => "pretty in pink"}

p blobs
puts globs
p slobs

store = [blobs, globs, slobs]
p store[0][:price]
p store [0][:color]