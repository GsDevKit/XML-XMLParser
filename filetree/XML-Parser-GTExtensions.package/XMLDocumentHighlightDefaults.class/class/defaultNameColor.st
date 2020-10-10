accessing
defaultNameColor
	^ defaultNameColor
		ifNil: [defaultNameColor := TextColor color: Color blue darker ]