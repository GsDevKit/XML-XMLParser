accessing
basicInvalidImplicitEncodedInputCollections
	^ #(
		#(16r80)
		#(16rBF)
		#(16rF8)
		#(16rFF)
		#(16rEF 16rFB 16rBF) "BOM with both partiy bits in the second byte set"
		#(16rEF 16r3B 16rBF) "BOM with both parity bits in the second byte unset"
		#(16rEF 16rBB 16rFF) "BOM with both partiy bits in the third byte set"
		#(16rEF 16rBB 16r3F) "BOM with both parity bits in the third byte unset"
	) collect: [:each | each asByteArray]