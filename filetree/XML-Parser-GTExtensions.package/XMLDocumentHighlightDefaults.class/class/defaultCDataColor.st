accessing
defaultCDataColor
	^ defaultCDataColor
		ifNil: [defaultCDataColor := TextColor color: Color gray darker ]