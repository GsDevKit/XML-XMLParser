accessing
fileReferenceForSuite: aSuite
	^ (XMLClassFinder classNamed: #'FileSystem') workingDirectory
		/ self baseDirectory / aSuite