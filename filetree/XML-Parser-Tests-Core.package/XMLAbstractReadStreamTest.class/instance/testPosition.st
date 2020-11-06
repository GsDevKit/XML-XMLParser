tests
testPosition
	| stream startPosition endPosition position |

	stream := self newStream.
	startPosition := stream position. "1 or 0 depending on the stream on GS"
	endPosition :=
		stream
			upToEnd;
			position.
	stream := self newStream.
	position := startPosition.
	self outputCollection do: [:each |
		self
			assert: stream position = position;
			"use #= because wide chars aren't #== pre-Spur"
			assert: stream peek = each;
			assert: stream position = position;
			assert: stream next = each;
			assert: stream position > position.
		
		stream peek.
		self
			assert: (stream position: position) == stream;
			assert: stream peek = each;
			assert: stream position = position;
			assert: stream next = each;
			assert: stream position > position.
		position := stream position].
	self assert: position = endPosition.