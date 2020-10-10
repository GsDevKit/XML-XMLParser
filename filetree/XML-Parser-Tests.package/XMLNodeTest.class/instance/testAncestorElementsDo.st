tests
testAncestorElementsDo
	| node |

	node := self newNode.
	self
		xmlShould: [:block |  node ancestorElementsDo: block]
		enumerate: #().