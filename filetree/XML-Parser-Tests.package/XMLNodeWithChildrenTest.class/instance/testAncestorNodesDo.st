tests
testAncestorNodesDo
	| nodeWithNodes |

	super testAncestorNodesDo.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each |
		self
			xmlShould: [:block | each ancestorNodesDo: block]
			enumerate: each ancestorNodes].