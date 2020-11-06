tests
testOnIfBinaryOrExternal
	| basicInputCollection stream adapter |

	basicInputCollection := self basicInputCollection.
	stream := self newStreamOn: (self binaryFrom: basicInputCollection).
	adapter := self streamAdapterClass onIfBinaryOrExternal: stream.
	self assert: adapter class == self streamAdapterClass.

	stream := self newStreamOn: (self stringFrom: basicInputCollection).
	self assert: (self streamAdapterClass onIfBinaryOrExternal: stream) isNil.
	[stream atEnd]
		whileFalse: [
			stream next.
			self assert:
				(self streamAdapterClass onIfBinaryOrExternal: stream) isNil].