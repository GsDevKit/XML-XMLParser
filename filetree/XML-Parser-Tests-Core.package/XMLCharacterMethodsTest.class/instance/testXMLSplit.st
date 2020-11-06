tests
testXMLSplit
	self
		assert: ($: xmlSplit: '') equals: (OrderedCollection with: '');
		assert: ($: xmlSplit: 'abc') equals: (OrderedCollection with: 'abc');
		assert: ($: xmlSplit: ':') equals: #('' '') asOrderedCollection;
		assert: ($: xmlSplit: '::') equals: #('' '' '') asOrderedCollection;
		assert: ($: xmlSplit: 'a:bc:') equals: #('a' 'bc' '') asOrderedCollection;
		assert: ($: xmlSplit: ':ab:c:') equals: #('' 'ab' 'c' '') asOrderedCollection;
		assert: ($: xmlSplit: 'a:bc:') equals: #('a' 'bc' '') asOrderedCollection;
		assert: ($: xmlSplit: 'ab::cd::ef') equals: #('ab'  '' 'cd' '' 'ef') asOrderedCollection;
		assert:
			($: xmlSplit: '::ab:::cd:::ef::') equals:
				#('' '' 'ab'  '' '' 'cd' '' '' 'ef' '' '') asOrderedCollection