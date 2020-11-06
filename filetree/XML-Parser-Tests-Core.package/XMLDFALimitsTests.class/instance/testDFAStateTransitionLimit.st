tests
testDFAStateTransitionLimit
	| dfaState elementName |

	dfaState :=
		(DTDElementContentModelParser
			element: 'test'
			contentModel: '(test)') parse dfa.
	1 to: dfaState maxDFAStateTransitions do: [:i |
		elementName := 'test', i printString.
		dfaState nextDFAStateMatching: elementName.
		self
			assert: (dfaState dfaStateTransitions includesKey: elementName);
			assert: dfaState dfaStateTransitions size equals: i].

	elementName := 'test', (dfaState maxDFAStateTransitions + 1) printString.
	dfaState nextDFAStateMatching: elementName.
	self
		assert: (dfaState dfaStateTransitions includesKey: elementName);
		assert: dfaState dfaStateTransitions size equals: 1.