rendering
renderGlamorouslyOn: aRenderer
	| result oldBackgroundColor |

	result := (super renderGlamorouslyOn: aRenderer).
	oldBackgroundColor := result backgroundColor.
	"make it read-only, and also change the background to imply it's disabled"
	^ result
		beReadOnly;
		backgroundColor:
			(oldBackgroundColor brightness < 0.5
				ifTrue: [oldBackgroundColor lighter]
				ifFalse: [oldBackgroundColor darker]);
		yourself.