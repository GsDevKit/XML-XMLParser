accessing
defaultDoctypeDeclarationColor
	^ defaultDoctypeDeclarationColor
		ifNil: [
			defaultDoctypeDeclarationColor := TextColor color: Color red ]