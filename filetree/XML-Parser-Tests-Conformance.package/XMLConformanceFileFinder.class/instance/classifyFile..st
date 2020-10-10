private
classifyFile: aFileReference
	| pathSegments basename |

	pathSegments := aFileReference pathSegments.
	basename := aFileReference basename asLowercase.

	(self isEntityFileBasename: basename)
		ifTrue: [
			self entityFiles addLast: aFileReference.
			^ self].

	(self isXMLFileBasename: basename)
		ifFalse: [^ self].

	((self isFailingTestFileBasename: basename)
		or: [self isFailingTestFilePathSegments: pathSegments])
		ifTrue: [
			(self isOutputFilePathSegments: pathSegments)
				ifFalse: [self failingTestFiles addLast: aFileReference].
			^ self].

	(self isOutputFilePathSegments: pathSegments)
		ifTrue: [
			self passingTestOutputFiles addLast: aFileReference.
			^ self].

	self passingTestFiles addLast: aFileReference.