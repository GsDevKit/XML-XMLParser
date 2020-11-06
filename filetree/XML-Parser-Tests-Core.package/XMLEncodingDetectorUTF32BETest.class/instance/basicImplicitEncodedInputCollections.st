accessing
basicImplicitEncodedInputCollections
	^ #(
		#(16r00 16r00 16r00 16r01)
		#(16r00 16r00 16r00 16r0F)
		#(16r00 16r00 16r00 16r7F)
	) collect: [:each | each asByteArray]