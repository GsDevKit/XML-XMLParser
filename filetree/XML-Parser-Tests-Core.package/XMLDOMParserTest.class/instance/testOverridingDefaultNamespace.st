tests
testOverridingDefaultNamespace
	| document |

	document :=
		XMLDOMParser parse:
			'<outer xmlns="default"><inner xmlns=""/></outer>'.
	self
		assert: document root namespaceURI equals: 'default';
		assert: document root defaultNamespace equals: 'default';
		assert: document root firstNode namespaceURI equals: '';
		assert: document root firstNode defaultNamespace equals: ''.