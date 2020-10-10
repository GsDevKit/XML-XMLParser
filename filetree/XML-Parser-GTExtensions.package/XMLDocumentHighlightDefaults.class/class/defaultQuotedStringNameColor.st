accessing
defaultQuotedStringNameColor
	^ defaultQuotedStringNameColor
		ifNil: [
			defaultQuotedStringNameColor := TextColor color:
				Color red ]