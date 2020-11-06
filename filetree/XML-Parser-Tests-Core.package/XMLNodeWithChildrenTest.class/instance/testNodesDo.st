tests
testNodesDo
	| node |

	node := self newNode.
	self
		xmlShould: [:block | node nodesDo: block]
		enumerate: #().

	node := self newNodeWithNodes.
	self
		xmlShould: [:block | node nodesDo: block]
		enumerate: node nodes.