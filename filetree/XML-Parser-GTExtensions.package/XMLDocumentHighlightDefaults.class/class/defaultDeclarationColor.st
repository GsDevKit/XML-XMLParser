accessing
defaultDeclarationColor
	^ defaultDeclarationColor
		ifNil: [defaultDeclarationColor := TextColor color: Color blue ]