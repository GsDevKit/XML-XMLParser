tests
testBases
	2 to: self maxBase do: [:base | | stream |
		(0 to: base), (base + 1 to: base * 10 by: base) do: [:i |
			stream := self newStreamOn: (i printStringBase: base).
			self
				assert: (self integerReaderClass readFrom: stream withBase: base) = i;
				assert: stream atEnd]].
	self
		should: [
			self integerReaderClass
				readFrom: (self newStreamOn: '1')
				withBase: 1]
		raise: Error.
	self
		should: [
			self integerReaderClass
				readFrom: (self newStreamOn: '1')
				withBase: self maxBase + 1]
		raise: Error.