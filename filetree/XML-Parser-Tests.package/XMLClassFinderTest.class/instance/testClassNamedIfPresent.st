tests
testClassNamedIfPresent
	self assert:
		(self classFinder
			classNamed: self presentClassName
			ifPresent: [:presentClass | #present -> presentClass]) equals:
				(#present -> self presentClass).
	"ensure cull: is used"
	self assert:
		(self classFinder
			classNamed: self presentClassName
			ifPresent: [#present]) equals: #present.

	self assert:
		(self classFinder
			classNamed: self absentClassName
			ifPresent: [self fail]) isNil.