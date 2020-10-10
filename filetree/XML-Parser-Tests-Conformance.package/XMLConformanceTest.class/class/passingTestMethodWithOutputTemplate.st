method templates
passingTestMethodWithOutputTemplate
	^ '{1}
	"Source file: {2}"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #{1}.
	self
		shouldnt: [
			[| document |
				document :=
					self
						domParse: self class {3}
						documentURI: ''{4}''.
				self
					assertDocument: document 
					canonicallyEquals: self class {5}]
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions'