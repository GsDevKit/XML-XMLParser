asserting
assertDocument: aDocument canonicallyEquals: aString
	self assert:
		(self canonicalOutputFromDocument: aDocument) =
			(self outputWithNormalizedLineEndings: aString)