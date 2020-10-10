testing
isBinary
	^ (stream respondsTo: #isBinary)
		and: [stream isBinary]