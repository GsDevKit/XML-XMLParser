tests
testStringsDo
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		xmlShould: [:block | nodeWithElements stringsDo: block]
		enumerate: nodeWithElements strings.
	nodeWithElements allElementsDo: [:each |
		self
			xmlShould: [:block | each stringsDo: block]
			enumerate: each strings].