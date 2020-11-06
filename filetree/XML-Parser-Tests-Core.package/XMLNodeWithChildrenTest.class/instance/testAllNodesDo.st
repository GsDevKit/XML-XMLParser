tests
testAllNodesDo
	| nodeWithNodes allNodes |

	nodeWithNodes := self newNodeWithNodes.
	allNodes := nodeWithNodes allNodes.
	self
		xmlShould: [:block | nodeWithNodes allNodesDo: block]
		enumerate: allNodes.

	allNodes do: [:node |
		node canHaveChildren
			ifTrue: [
				self
					xmlShould: [:block | node allNodesDo: block]
					enumerate: node allNodes]].