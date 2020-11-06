tests
testBaseURI
	| exception |

	exception := self newException.
	self
		assert: exception baseURI equals: '';
		assert: (exception baseURI: self baseURI) == exception;
		assert: exception baseURI equals: self baseURI.