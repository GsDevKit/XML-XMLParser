tests
testInnerXMLEntities
	| document |

	document :=
		(XMLDOMParser on:
			'<!DOCTYPE test [
					<!ENTITY one "one">
					<!ENTITY two "two">
					<!ENTITY three "<!--comment-->">
				]>
			<test name="&one;">&one;</test>')
			preservesCommentNodes: true;
			parseDocument.
	self
		assert: (document root attributeAt: 'name') equals: 'one';
		assert: document root contentString equals: 'one'.

	document innerXML: '<test name="&two;">&three;</test>'.
	self
		assert: (document root attributeAt: 'name') equals: 'two';
		assert: document root hasChildren;
		assert: document root nodes size equals: 1;
		assert: document root firstNode isComment;
		assert: document root firstNode string equals: 'comment'.

	document root innerXML: '&two;'.
	self
		assert: (document root attributeAt: 'name') equals: 'two';
		assert: document root contentString equals: 'two'.

	self
		should: [document innerXML: '<test name="&undeclared;"></test>']
		raise: XMLWellFormednessException.
	self
		should: [document innerXML: '<test name="">&undeclared;</test>']
		raise: XMLWellFormednessException.
	self
		should: [document innerXML: '&three;<test/>']
		raise: XMLWellFormednessException.
	self
		should: [document innerXML: '<test/>&three;']
		raise: XMLWellFormednessException.