tests
testAttributes
	| document firstPerson  |

	document := XMLDOMParser parse: self addressBookXML.
	firstPerson := document findElementNamed: 'person'.
	self
		assert: (firstPerson attributeAt: 'employee-number') equals: 'A0000';
		assert: (firstPerson attributeAt: 'family-name') equals: 'Gates';
		assert: (firstPerson attributeAt: 'first-name') equals: 'Bob';
		assert:
			firstPerson attributeNames asArray equals:
				#('employee-number' 'family-name' 'first-name');
		assert: firstPerson attributeAssociations asArray equals:
			{('employee-number'->'A0000'). ('family-name'->'Gates'). ('first-name'->'Bob').}.