tests
testParsingSamplePerson
	"FSM-style parsing, with element handlers being the states and
	the factories mapped to them being the transitions"

	| person rootFactory personFactory contactsFactory factoryMapper |
	rootFactory := SAX2PluggableElementHandlerFactory new
		handleElement: 'person'
		withClass: SAX2HPersonElementHandler.
	personFactory := SAX2PluggableElementHandlerFactory new
		handleElement: 'name' withClass: SAX2HNameElementHandler;
		handleElement: 'date-of-birth'
			withClass: SAX2HDateOfBirthElementHandler;
		handleElement: 'contacts' withClass: SAX2HContactsElementHandler;
		handleElement: 'residence' withClass: SAX2HResidenceElementHandler.
	contactsFactory := SAX2PluggableElementHandlerFactory new
		handleElement: 'email'
		withClass: SAX2HEmailElementHandler.
	factoryMapper := SAX2PluggableElementHandlerFactoryMapper new
		mapElementHandlerClass: SAX2HPersonElementHandler
			toFactory: personFactory;
		mapElementHandlerClass: SAX2HContactsElementHandler
			toFactory: contactsFactory.
	person := (SAX2ElementParser on: self samplePersonXML)
		elementHandlerFactory: rootFactory;
		elementHandlerFactoryMapper: factoryMapper;
		parseDocument.
	self
		assert: person class == SAX2SamplePerson;
		assert: person name equals: 'Tim Bray';
		assert: person dateOfBirth
			equals: (Date year: 1955 month: 6 day: 21);
		assert: person emailAddresses asArray
			equals: #('tbray@textuality.com' 'tbray@tbray.org');
		assert: person residence
			equals: 'Vancouver, British Columbia, Canada'