accessing
defaultDefaultColor
	^ defaultDefaultColor
		ifNil: [defaultDefaultColor := TextColor color: Color black ]