tests
testRemoveAllFormattingNodes
	| nodeWithElements nonFormattingStringNodes |

	nodeWithElements := self newNode.
	nodeWithElements innerXML:
		'<a>
			<non-formatting> </non-formatting>
			<b>
				<c>
					<d/>
				</c>
			</b>
			<non-formatting> one </non-formatting>
			<non-formatting>
				one
				<c> </c>
				<c>
					two <d> </d> three
				</c>
				four
			</non-formatting>
		</a>'.
	nonFormattingStringNodes :=
		nodeWithElements allNodesSelect: [:node |
			node isStringNode
				and: [
					node ancestorElements anySatisfy: [:each |
						each isNamed: 'non-formatting']]].

	self
		assert: nodeWithElements removeAllFormattingNodes == nodeWithElements;
		assert:
			(nodeWithElements allNodesSelect: [ :each | each isStringNode]) =
				nonFormattingStringNodes.