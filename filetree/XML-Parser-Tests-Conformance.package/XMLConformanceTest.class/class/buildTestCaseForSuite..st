building subclasses
buildTestCaseForSuite: aSuite
	| testCaseClass fileFinder badSourceFiles |

	testCaseClass := self createSubclassForSuite: aSuite.
	fileFinder :=
		XMLConformanceFileFinder
			suite: aSuite
			root: (self fileReferenceForSuite: aSuite).
	(self suitesWithSkippableBases includes: aSuite)
		ifTrue: [fileFinder findFilesSkippingBase]
		ifFalse: [fileFinder findFiles].

	badSourceFiles := Set new.
	(fileFinder passingTestFiles,
		fileFinder passingTestOutputFiles,
		fileFinder failingTestFiles,
		fileFinder entityFiles) do: [:each |
			[self
				buildSourceFileClassMethodFor: each
				in: testCaseClass]
				on: Error
				do: [:error | badSourceFiles add: each]].

	fileFinder passingTestFiles do: [:each |
		(badSourceFiles includes: each)
			ifFalse: [
				self
					buildPassingTestMethodFor: each
					in: testCaseClass]].
	fileFinder failingTestFiles do: [:each |
		(badSourceFiles includes: each)
			ifFalse: [
				self
					buildFailingTestMethodFor: each
					in: testCaseClass]].