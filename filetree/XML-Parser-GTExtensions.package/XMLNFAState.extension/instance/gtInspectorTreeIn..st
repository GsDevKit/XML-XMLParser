*XML-Parser-GTExtensions
gtInspectorTreeIn: aComposite
	<gtInspectorPresentationOrder: 1>

	aComposite tree
		title: 'Tree';
		display: [{self}];
		children: [:each | each treeViewChildren];
		format: [:each | each treeViewLabelText];
		when: [self supportsTreeView];
		"these two features need to be disabled, because we're modeling a
		cyclic directed graph as a tree, and the tree presentation will
		loop in #pathIn: otherwise"
		shouldValidate: false;
		allowsRecursiveSearch: false;
		rootsExpanded