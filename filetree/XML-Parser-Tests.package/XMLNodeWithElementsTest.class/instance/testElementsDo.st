tests
testElementsDo
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		xmlShould: [:block | nodeWithElements elementsDo: block]
		enumerate: nodeWithElements elements.
	nodeWithElements allElementsDo: [:each |
		self
			xmlShould: [:block | each elementsDo: block]
			enumerate: each elements].