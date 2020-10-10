tests
testClassNamedIfPresentIfAbsent
	self assert:
		(self classFinder
			classNamed: self presentClassName
			ifPresent: [:presentClass | #present -> presentClass]
			ifAbsent: [self fail]) equals:
				(#present -> self presentClass).
	"ensure cull: is used"
	self assert:
		(self classFinder
			classNamed: self presentClassName
			ifPresent: [#present]
			ifAbsent: [self fail]) equals: #present.

	self assert:
		(self classFinder
			classNamed: self absentClassName
			ifPresent: [self fail]
			ifAbsent: [#absent]) equals: #absent.