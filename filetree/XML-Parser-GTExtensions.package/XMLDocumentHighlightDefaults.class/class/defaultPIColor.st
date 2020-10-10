accessing
defaultPIColor
	^ defaultPIColor
		ifNil: [defaultPIColor := TextColor color: Color brown ]