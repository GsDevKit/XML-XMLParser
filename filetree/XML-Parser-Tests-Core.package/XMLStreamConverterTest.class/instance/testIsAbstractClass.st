tests
testIsAbstractClass
	| streamConverterClass |

	streamConverterClass := self streamConverterClass.
	self deny: streamConverterClass isAbstractClass.
	self isImplicit
		ifTrue: [streamConverterClass := streamConverterClass superclass].
	[streamConverterClass == XMLStreamConverter]
		whileFalse: [
			streamConverterClass := streamConverterClass superclass.
			self assert: streamConverterClass isAbstractClass].