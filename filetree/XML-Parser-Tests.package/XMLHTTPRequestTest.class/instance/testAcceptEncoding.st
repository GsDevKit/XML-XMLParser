tests
testAcceptEncoding
	| request defaultValue absentValue |

	self isSupported
		ifFalse: [^ self].

	request := self newRequestWithURL.
	defaultValue := request defaultAcceptEncoding asOrderedCollection.
	absentValue := OrderedCollection new.
	self
		assert: request acceptEncoding sorted = defaultValue sorted;
		assert: (request acceptEncoding: 'one') == request;
		assert: request acceptEncoding = #('one') asOrderedCollection;
		assert: (request acceptEncoding: ' one, identity, two') == request;
		assert: request acceptEncoding = #('one' 'two') asOrderedCollection;
		assert: (request acceptEncoding: #('one')) == request;
		assert: request acceptEncoding = #('one') asOrderedCollection;
		assert: (request acceptEncoding: #('one' 'identity' 'two')) == request;
		assert: request acceptEncoding = #('one' 'two') asOrderedCollection;
		assert: (request acceptEncoding: '') == request;
		assert: request acceptEncoding = absentValue;
		assert: (request acceptEncoding: #()) == request;
		assert: request acceptEncoding = absentValue.

	request
		headerAt: 'Accept-Encoding'
		put: 'identity,one,identity,two,identity,three,identity'.
	self assert:
		request acceptEncoding =
			#('one' 'two' 'three') asOrderedCollection.

	request removeHeaderAt: 'Accept-Encoding'.
	self assert: request acceptEncoding = absentValue.