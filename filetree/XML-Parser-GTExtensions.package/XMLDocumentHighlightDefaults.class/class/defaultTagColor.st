accessing
defaultTagColor
	^ defaultTagColor
		ifNil: [defaultTagColor := TextColor color: Color blue ]