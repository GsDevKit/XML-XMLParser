tests
testRequiresSchema
	| parser |

	(parser := SAXHandler on: '') isValidating: false.
	self deny: parser requiresSchema.

	"enabling should force validation"
	self
		assert: (parser requiresSchema: true) == parser;
		assert: parser requiresSchema;
		assert: parser isValidating.

	self
		assert: (parser isValidating: false) == parser;
		deny: parser isValidating;
		deny: parser requiresSchema.