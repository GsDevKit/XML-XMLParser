*XML-Parser-GTExtensions
gtInspectorTreeIn: aComposite inContext: aGTInspector
	<gtInspectorPresentationOrder: 1>

	| treeView |

	treeView :=
		aComposite tree
			title: 'Tree';
			display: [{self}];
			children: [:each | each treeViewChildren];
			format: [:each | each treeViewLabelText];
			when: [self supportsTreeView];
			act: [
				self promptForSourceSaveFileName
					ifNotEmpty: [:fileName |
						self
							printToFileNamed: fileName
							beforeWritingDo: [:writer |
								writer enablePrologPrettyPrinting]]]
				icon: GLMUIThemeExtraIcons glamorousSave
				entitled: 'Save as';
			rootsExpanded.

	self
		addRemoveActionTo: treeView
		in: aComposite
		inContext: aGTInspector