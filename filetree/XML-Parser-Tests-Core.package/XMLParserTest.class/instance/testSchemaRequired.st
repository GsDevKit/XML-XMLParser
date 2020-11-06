tests
testSchemaRequired
	self
		shouldnt: [
			(SAXHandler on: '<!DOCTYPE root [<!ELEMENT root EMPTY>]><root/>')
				requiresSchema: true;
				parseDocument]
		raise: XMLValidationException.
	self
		should: [
			(SAXHandler on: '<root/>')
				requiresSchema: true;
				parseDocument]
		raise: XMLValidationException.
	self
		should: [
			(SAXHandler on: '
				<!DOCTYPE root [
					<!ENTITY one "two">
					<!ENTITY % three "four">
					<!NOTATION five PUBLIC "six">
					<!--seven-->]>
				<root/>')
				requiresSchema: true;
				parseDocument]
		raise: XMLValidationException.