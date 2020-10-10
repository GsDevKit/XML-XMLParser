tests
testAncestorNodesDo
	| node |

	node := self newNode.
	self
		xmlShould: [:block |  node ancestorNodesDo: block]
		enumerate: #().