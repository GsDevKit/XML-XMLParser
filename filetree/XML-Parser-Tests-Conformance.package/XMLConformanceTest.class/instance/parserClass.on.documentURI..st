parsing
parserClass: aParserClass on: aString documentURI: aURIString 
	| parser |

	parser :=
		aParserClass
			on: aString
			documentURI: aURIString.

	"none of the tests use namespaces, but the Expat suite has examples with
	invalid QNames that trigger namespace exceptions, so namespace support is
	disabled, and because the source is pre-decoded from UTF-8/UTF-16, decoding
	is disabled"
	^ parser
		usesNamespaces: false;
		isValidating: true;
		resolvesExternalEntities: true;
		externalEntityResolver: self newVirtualFileExternalEntityResolver;
		decodesCharacters: false.