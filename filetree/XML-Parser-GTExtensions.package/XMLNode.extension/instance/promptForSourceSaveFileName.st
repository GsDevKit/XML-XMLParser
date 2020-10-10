*XML-Parser-GTExtensions
promptForSourceSaveFileName
	^ (UITheme builder
		fileSave: 'Save XML source to file'
		extensions:
			"'xml' must come first so it's the default extension"
			(XMLFileHandle xmlDocumentFileExtensions sorted: [:a :b |
				a = 'xml'
					or: [b ~= 'xml'
						and: [a <= b]]]))
			ifNil: ['']
			ifNotNil: [:reference | reference fullName]