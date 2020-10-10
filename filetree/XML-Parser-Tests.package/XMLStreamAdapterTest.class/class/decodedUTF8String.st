accessing
decodedUTF8String
	^ self stringFrom:
		#(16r01 16r0F 16r7F 16r80 16r7FF 16r800 16rFEFE 16rFFFF 16r10000 16r10FFFF)