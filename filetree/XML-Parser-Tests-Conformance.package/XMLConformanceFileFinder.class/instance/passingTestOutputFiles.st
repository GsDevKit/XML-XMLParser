accessing
passingTestOutputFiles
	^ passingTestOutputFiles ifNil: [passingTestOutputFiles := OrderedCollection new]