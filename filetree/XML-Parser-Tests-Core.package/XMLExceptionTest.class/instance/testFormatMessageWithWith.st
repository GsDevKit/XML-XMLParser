tests
testFormatMessageWithWith
	| exception |

	exception := self newException.
	self assert:
		(exception
			formatMessage: '{1} {2}'
			with: 'one'
			with: 2) == exception.
	self assert: exception messageText equals: 'one 2'.