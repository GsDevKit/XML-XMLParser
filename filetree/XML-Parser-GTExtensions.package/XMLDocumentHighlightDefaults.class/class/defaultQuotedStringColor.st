accessing
defaultQuotedStringColor
	^ defaultQuotedStringColor
		ifNil: [defaultQuotedStringColor := TextColor color: Color purple ]