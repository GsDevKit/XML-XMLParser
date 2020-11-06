tests
testAllButLastDo
	self
		xmlShould: [:block | self emptyList allButLastDo: block]
		enumerate: #().
	self
		xmlShould: [:block | self listWithItems allButLastDo: block]
		enumerate: self listItems allButLast.