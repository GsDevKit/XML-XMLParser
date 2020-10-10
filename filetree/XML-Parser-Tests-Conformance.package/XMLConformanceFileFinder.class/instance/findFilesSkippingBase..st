private
findFilesSkippingBase: aBoolean
	| directoryEntries |

	directoryEntries :=
		"avoid direct references to SelectVisitor so the package does not
		raise errors during loading on Squeak or GS"
		(XMLClassFinder classNamed: #SelectVisitor)
			preorder: self root
			select: [:each | | pathSegments |
				"ignore directories, the xml file describing the suite,
				and other bases files if needed"
				(each isDirectory
					or: [
						pathSegments := each pathSegments.
						aBoolean
							ifTrue: [pathSegments allButLast last = self suite]
							ifFalse: [
								pathSegments endsWith:
									(Array
										with: self suite
										with: self suite, '.xml')]]) not].
	directoryEntries do: [:each |
		self classifyFile: each asFileReference].