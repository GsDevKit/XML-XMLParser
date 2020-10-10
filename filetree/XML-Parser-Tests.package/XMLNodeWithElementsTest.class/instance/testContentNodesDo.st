tests
testContentNodesDo
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		xmlShould: [:block | nodeWithElements contentNodesDo: block]
		enumerate: nodeWithElements contentNodes.
	nodeWithElements allElementsDo: [:each |
		self
			xmlShould: [:block | each contentNodesDo: block]
			enumerate: each contentNodes].