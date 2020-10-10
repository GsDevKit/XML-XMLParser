tests
testRequiresSchema
	| configuration |

	(configuration := self newConfiguration) isValidating: false.
	self deny: configuration requiresSchema.

	"enabling should force validation"
	self
		assert: (configuration requiresSchema: true) == configuration;
		assert: configuration requiresSchema;
		assert: configuration isValidating.

	self
		assert: (configuration isValidating: false) == configuration;
		deny: configuration isValidating;
		deny: configuration requiresSchema.