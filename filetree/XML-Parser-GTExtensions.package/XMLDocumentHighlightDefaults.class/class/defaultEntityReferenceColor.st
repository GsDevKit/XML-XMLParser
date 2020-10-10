accessing
defaultEntityReferenceColor
	^ defaultEntityReferenceColor
		ifNil: [
			defaultEntityReferenceColor := TextColor color: Color red ]