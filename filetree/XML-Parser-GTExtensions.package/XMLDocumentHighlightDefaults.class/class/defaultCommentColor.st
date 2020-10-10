accessing
defaultCommentColor
	^ defaultCommentColor
		ifNil: [defaultCommentColor := TextColor color: (Color r: 0.0 g: 0.519 b: 0.0 alpha: 1.0) ]