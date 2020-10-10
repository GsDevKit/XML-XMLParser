building subclasses
buildFailingTestMethodFor: aFileReference in: aClass	
	aClass
		compile:
			(self failingTestMethodTemplate format:
				(Array
					with: (self testSelectorFor: aFileReference) asString
					with: (self relativePathStringFor: aFileReference)
					with: (self sourceSelectorFor: aFileReference) asString
					with: (self documentURIFor: aFileReference)))
		classified: #'tests - exception raising'