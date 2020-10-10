building subclasses
buildTestMethodFor: aFileReference in: aClass usingTemplate: aTemplate classified: aCategory
	aClass
		compile:
			(aTemplate format:
				(Array
					with: (self testSelectorFor: aFileReference)
					with: (self sourceSelectorFor: aFileReference)
					with: (self relativePathStringFor: aFileReference)
					with: (self documentURIFor: aFileReference)))
		classified: aCategory