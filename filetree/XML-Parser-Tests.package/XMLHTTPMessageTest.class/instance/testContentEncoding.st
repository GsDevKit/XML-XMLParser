tests
testContentEncoding
	| message defaultValue absentValue |

	self isSupported
		ifFalse: [^ self].

	message := self newMessage.
	defaultValue := OrderedCollection new.
	absentValue := defaultValue.
	self
		assert: message contentEncoding = defaultValue;
		assert: (message contentEncoding: 'one') == message;
		assert: message contentEncoding = #('one') asOrderedCollection;
		assert: (message contentEncoding: ' one, identity, two') == message;
		assert: message contentEncoding = #('one' 'two') asOrderedCollection;
		assert: (message contentEncoding: #('one')) == message;
		assert: message contentEncoding = #('one') asOrderedCollection;
		assert: (message contentEncoding: #('one' 'identity' 'two')) == message;
		assert: message contentEncoding = #('one' 'two') asOrderedCollection;
		assert: (message contentEncoding: '') == message;
		assert: message contentEncoding = absentValue;
		assert: (message contentEncoding: #()) == message;
		assert: message contentEncoding = absentValue.

	message
		headerAt: 'Content-Encoding'
		put: 'identity,one,identity,two,identity,three,identity'.
	self assert:
		message contentEncoding =
			#('one' 'two' 'three') asOrderedCollection.

	message removeHeaderAt: 'Content-Encoding'.
	self assert: message contentEncoding = absentValue.