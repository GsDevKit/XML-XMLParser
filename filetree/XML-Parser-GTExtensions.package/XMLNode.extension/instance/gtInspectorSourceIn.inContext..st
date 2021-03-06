*XML-Parser-GTExtensions
gtInspectorSourceIn: aComposite inContext: aGTInspector
	<gtInspectorPresentationOrder: 2>

	| sourceEditor currentTextStylerDecorator |

	sourceEditor :=
		aComposite custom: 
			(self supportsSourceEditing
				ifTrue: [
					GLMRubricHighlightedTextPresentation new
						editingMode: [
							currentTextStylerDecorator :=
								self newSourceEditorTextStylerDecorator.
							GLMHighlighterTextRubEditingMode withStylerDecorator:
								currentTextStylerDecorator];
						act: [
							self
								acceptEditedSource: currentTextStylerDecorator text
								inContext: aGTInspector]
							icon: GLMUIThemeExtraIcons glamorousAccept
							on: $s
							entitled: 'Accept';
						act: [:presentation |
							(presentation hasUnacceptedEdits not
								or: [UIManager default confirm: 'Revert source edits?'])
								ifTrue: [presentation update]]
							icon: GLMUIThemeExtraIcons glamorousUndo
							on: $Z
							entitled: 'Revert';
						act: [
							self promptForSourceSaveFileName
								ifNotEmpty: [:fileName |
									self
										acceptEditedSource: currentTextStylerDecorator text
										inContext: aGTInspector.
									currentTextStylerDecorator saveToFile: fileName]]
							icon: GLMUIThemeExtraIcons glamorousSave
							entitled: 'Save as']
				ifFalse: [
					GLMXMLDisabledRubricHighlightedTextPresentation new
						editingMode: [
							currentTextStylerDecorator :=
								GLMXMLDisabledDocumentHighlighterTextStylerDecorator
									disabledText: self asHighlightedSourceText
									encoding:
										(self document
											ifNil: ['']
											ifNotNil: [:document | document encoding]).
							GLMHighlighterTextRubEditingMode withStylerDecorator:
								currentTextStylerDecorator];
						act: [
							self promptForSourceSaveFileName
								ifNotEmpty: [:fileName |
									currentTextStylerDecorator saveToFile: fileName]]
							icon: GLMUIThemeExtraIcons glamorousSave
							entitled: 'Save as']).

	sourceEditor
		title: 'Source';
		display: [
			String new: 10000 streamContents: [:stream |
				self
					printOn: stream
					beforeWritingDo: [:writer |
						writer enablePrologPrettyPrinting]]];
		withLineNumbers: true.

	self
		addRemoveActionTo: sourceEditor
		in: aComposite
		inContext: aGTInspector.