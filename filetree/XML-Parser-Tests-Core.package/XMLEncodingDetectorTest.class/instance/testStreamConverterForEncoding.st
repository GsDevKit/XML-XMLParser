tests
testStreamConverterForEncoding
	self explicitEncodedInputCollections do: [:each |
		| stream startPosition streamConverter |
	
		stream := self newStreamOn: each.
		startPosition := stream position.
		streamConverter :=
			(self newExplicitEncodingDetectorOn: stream)
				streamConverterForEncoding.
		self
			deny: streamConverter isNil;
		 	assert: streamConverter class == self explicitStreamConverterClass;
			deny: streamConverter isImplicit;
			assert:
				stream position =
					(startPosition + self inputCollectionByteOrderMark size)].

	self implicitEncodedInputCollections do: [:each |
		| stream startPosition streamConverter |
	
		stream := self newStreamOn: each.
		startPosition := stream position.
		streamConverter :=
			(self newExplicitEncodingDetectorOn: stream)
				streamConverterForEncoding.
		self
			assert: streamConverter isNil;
			assert: stream position = startPosition.

		stream := self newStreamOn: each.
		startPosition := stream position.
		streamConverter :=
			(self newImplicitEncodingDetectorOn: stream)
				streamConverterForEncoding.
		self
			deny: streamConverter isNil;
		 	assert: streamConverter class == self implicitStreamConverterClass;
			assert: streamConverter isImplicit;
			assert: stream position = startPosition].

	self invalidImplicitEncodedInputCollections do: [:each |
		| stream startPosition streamConverter |

		stream := self newStreamOn: each.
		startPosition := stream position.
		streamConverter :=
			(self newImplicitEncodingDetectorOn: stream)
				streamConverterForEncoding.
		self
			assert: streamConverter isNil;
			assert: stream position = startPosition].