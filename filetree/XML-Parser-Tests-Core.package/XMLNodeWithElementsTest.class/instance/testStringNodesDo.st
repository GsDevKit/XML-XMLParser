tests
testStringNodesDo
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		xmlShould: [:block | nodeWithElements stringNodesDo: block]
		enumerate: nodeWithElements stringNodes.
	nodeWithElements allElementsDo: [:each |
		self
			xmlShould: [:block | each stringNodesDo: block]
			enumerate: each stringNodes].