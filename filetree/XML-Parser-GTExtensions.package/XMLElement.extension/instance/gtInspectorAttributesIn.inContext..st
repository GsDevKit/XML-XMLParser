*XML-Parser-GTExtensions
gtInspectorAttributesIn: aComposite inContext: aGTInspector
	<gtInspectorPresentationOrder: 3>
	
	aComposite table
		when: [ self hasAttributes ];
		title: 'Attributes';
		display: [ self attributeNodes ];
		column: 'Name' evaluated: #name;
		column: 'Value' evaluated: #value