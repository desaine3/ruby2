def encode(n)
	# currently encodes by adding 6
	# TODO change it so that it encodes by doing a bitwise_xor (^) with 6
	return n + 6
end


def decode(n)
	return n - 6
end