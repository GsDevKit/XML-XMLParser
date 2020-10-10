tests
testIsImplicit
	self isImplicit
		ifTrue: [self assert: self newStreamConverter isImplicit]
		ifFalse: [self deny: self newStreamConverter isImplicit]