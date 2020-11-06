tests
testNonDecodingOnIfBinaryOrExternal
	| basicInputCollection adapter stream |

	basicInputCollection := self basicInputCollection.
	stream := self newStreamOn: (self binaryFrom: basicInputCollection).
	adapter := self streamAdapterClass nonDecodingOnIfBinaryOrExternal: stream.
	self
		assert: adapter class == self streamAdapterClass;
		assert: adapter hasNullStreamConverter.

	stream := self newStreamOn: (self stringFrom: basicInputCollection).
	adapter := self streamAdapterClass nonDecodingOnIfBinaryOrExternal: stream.
	self assert: adapter isNil.