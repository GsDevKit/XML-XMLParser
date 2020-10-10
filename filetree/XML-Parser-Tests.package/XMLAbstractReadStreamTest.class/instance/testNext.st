tests
testNext
	| stream |

	stream := self newStream.
	self outputCollection do: [:each |
		"use #= because wide chars aren't #== pre-Spur"
		self assert: stream next = each].
	self assert: stream next isNil.

	0 to: self outputCollection size do: [:i |
		stream := self newStream.
		self assert:
			(stream next: i) =
				(self outputCollection copyFrom: 1 to: i)].

	stream := self newStream.
	self assert:
		(stream next: self outputCollection size + 1) =
			self outputCollection.
	self assert: (stream next: 1) isEmpty.