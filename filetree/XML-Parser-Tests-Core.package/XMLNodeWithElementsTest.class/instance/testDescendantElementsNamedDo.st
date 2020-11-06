tests
testDescendantElementsNamedDo
	| nodeWithElements namedElements |

	nodeWithElements := self newNodeWithElements.
	self
		xmlShould: [:block | nodeWithElements descendantElementsNamed: 'absent' do: block]
		enumerate: #().

	namedElements := nodeWithElements descendantElementsNamed: 'four'. 
	self
		xmlShould: [:block | nodeWithElements descendantElementsNamed: 'four' do: block]
		enumerate: namedElements.