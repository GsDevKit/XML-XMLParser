asserting
assertMIMEType: aFirstMIMEType doesNotEqual: aSecondMIMEType
	self
		deny: aFirstMIMEType = aSecondMIMEType;
		deny: aSecondMIMEType = aFirstMIMEType