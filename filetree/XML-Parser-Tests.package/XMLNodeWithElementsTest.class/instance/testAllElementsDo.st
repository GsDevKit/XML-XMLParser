tests
testAllElementsDo
	| nodeWithElements allElements |

	nodeWithElements := self newNodeWithElements.
	allElements := nodeWithElements allElements.
	self
		xmlShould: [:block | nodeWithElements allElementsDo: block]
		enumerate: allElements.

	allElements do: [:element |
		self
			xmlShould: [:block | element allElementsDo: block]
			enumerate: element allElements].