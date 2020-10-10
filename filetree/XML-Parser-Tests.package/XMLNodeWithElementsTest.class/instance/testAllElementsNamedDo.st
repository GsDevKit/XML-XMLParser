tests
testAllElementsNamedDo
	| nodeWithElements allElements namedElements |

	nodeWithElements := self newNodeWithElements.
	self
		xmlShould: [:block | nodeWithElements allElementsNamed: 'absent' do: block]
		enumerate: #().

	allElements := nodeWithElements allElements.
	namedElements := nodeWithElements allElementsNamed: 'four'. 
	self
		xmlShould: [:block | nodeWithElements allElementsNamed: 'four' do: block]
		enumerate: namedElements.