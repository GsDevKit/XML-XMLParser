tests
testMaxIntegerValue
	| maxValue |

	(maxValue := self maxIntegerValue)
		ifNil: [^ self].
	2 to: self maxBase do: [:base |
		self assert:
			(self integerReaderClass
				readFrom: (self newStreamOn: (maxValue printStringBase: base))
				withBase: base) = maxValue.
		1 to: base do: [:i |
			self  assert:
				(self integerReaderClass
					readFrom: (self newStreamOn: ((maxValue + i) printStringBase: base))
					withBase: base) = maxValue]].