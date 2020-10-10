tests
testReverseDo
	self
		xmlShould: [:block | self emptyList reverseDo: block] enumerate: #();
		xmlShould: [:block | self listWithItems reverseDo: block] enumerate: self listItems reversed.