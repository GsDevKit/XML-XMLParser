tests
testDo
	self
		xmlShould: [:block | self emptyList do: block] enumerate: #();
		xmlShould: [:block | self listWithItems do: block] enumerate: self listItems