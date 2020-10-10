tests
testAbstractClass
	| streamConverterClass |

	streamConverterClass := self streamConverterClass.
	self assert:
		streamConverterClass abstractClass ==
			(self isImplicit
				ifTrue: [streamConverterClass superclass superclass]
				ifFalse: [streamConverterClass superclass])