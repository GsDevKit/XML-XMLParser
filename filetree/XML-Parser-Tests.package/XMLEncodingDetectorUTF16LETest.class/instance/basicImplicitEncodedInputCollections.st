accessing
basicImplicitEncodedInputCollections
	^ #(
		#(16r01 16r00)
		#(16r0F 16r00)
		#(16r7F 16r00)
	) collect: [:each | each asByteArray]