tests
testIsLocal
	self
		assert: '' asXMLURI isLocal;
		assert: '/' asXMLURI isLocal;
		assert: self absolute asXMLURI isLocal;
		assert: self absoluteDir asXMLURI isLocal;
		assert: self absoluteDirRelativeCombined asXMLURI isLocal;
		assert: self absoluteRelativeCombined asXMLURI isLocal;
		deny: self domainURIString asXMLURI isLocal;
		deny: self domainURIWithPortString asXMLURI isLocal;
		deny: self emailURIString asXMLURI isLocal;
		assert: self fileURIWithHostString asXMLURI isLocal;
		assert: self fileURIString asXMLURI isLocal;
		assert: self fragmentURIString asXMLURI isLocal;
		deny: self fullURIString asXMLURI isLocal;
		deny: self fullURIWithPortString asXMLURI isLocal;
		assert: self queryURIString asXMLURI isLocal;
		assert: self relative asXMLURI isLocal;
		assert: self relativeAbsoluteCombined asXMLURI isLocal;
		deny: self schemelessURIString asXMLURI isLocal;
		deny: self schemelessURIWithPortString asXMLURI isLocal