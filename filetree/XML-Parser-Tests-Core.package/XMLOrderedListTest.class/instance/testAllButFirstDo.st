tests
testAllButFirstDo
	self
		xmlShould: [:block | self emptyList allButFirstDo: block]
		enumerate: #().
	self
		xmlShould: [:block | self listWithItems allButFirstDo: block]
		enumerate: self listItems allButFirst.