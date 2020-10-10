accessing
defaultXMLDeclarationColor
	^ defaultXMLDeclarationColor
		ifNil: [defaultXMLDeclarationColor := TextColor color: Color red darker ]