tests
testOnIfBinaryOrExternal
	| adapter stream |

	super testOnIfBinaryOrExternal.

	stream := self newStreamOn: (self binaryFrom: self basicInputCollection).
	adapter := self streamAdapterClass onIfBinaryOrExternal: stream.
	self
		assert: adapter class == self streamAdapterClass;
		assert: adapter hasDefaultStreamConverter.