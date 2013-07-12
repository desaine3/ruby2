def encode(n)
	# currently encodes by adding 6
	# TODO change it so that it encodes by doing a bitwise_xor (^) with 6
	return n^10
end


def decode(n)
	number = encode(n)
	return  number^n
end