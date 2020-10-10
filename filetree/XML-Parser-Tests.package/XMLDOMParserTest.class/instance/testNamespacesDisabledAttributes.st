tests
testNamespacesDisabledAttributes
	| document |

	document :=
		XMLDOMParser
			parse: '<root xmlns:prefix="prefixNS" xmlns="defaultNS" name="value"/>'
			usingNamespaces: false.
	self
		assert: document root attributeNames asArray equals: #('xmlns:prefix' 'xmlns' 'name');
		assert: (document root attributeAt: 'xmlns:prefix') equals: 'prefixNS';
		assert: (document root attributeAt: 'xmlns') equals: 'defaultNS';
		assert: (document root attributeAt: 'name') equals: 'value'.