tests
testInvalidCharacters
	self invalidInputCollections do: [:each | | streamAdapter |
		streamAdapter := self newStreamAdapter.
		self
			should: [streamAdapter nextPutAll: each]
			raise: XMLEncodingException].