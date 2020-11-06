tests
testPeek
	| stream |

	stream := self newStream.
	self outputCollection do: [:each |
		"use #= because wide chars aren't #== pre-Spur"
		self assert: stream peek = each.
		stream next].
	self assert: stream peek isNil.