tests
testContents
	| stream |

	stream := self newStream.
	self outputCollection do: [:each |
		"use #= because wide chars aren't #== pre-Spur"
		self
			assert: stream peek = each;
			assert: stream contents = self outputCollection;
			assert: stream peek = each;
			assert: stream next = each].
	self assert: stream contents = self outputCollection.