Loads the XMLParser library and related packages:
	(ConfigurationOfXMLParser project version: #stable) load: #('default')

The loadable groups are:
	'default' - XMLParser, XMLWriter, and tests.
	'Core' - XMLParser without XMLWriter or tests.
	'CoreWithWriting' - XMLParser and XMLWriter, but without tests.

Users should prefer #stable unless they rely on XMLParser internals,
but it will delegate to a specific #release version from now on.