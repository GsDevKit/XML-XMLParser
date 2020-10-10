private
writeUnescapedString: aString
	self isCanonical
		ifTrue: [
			"conformance canonical XML requires single quotes for these strings"
			self
				writeUnescapedString: aString
				quotedBy: $']
		ifFalse: [super writeUnescapedString: aString]