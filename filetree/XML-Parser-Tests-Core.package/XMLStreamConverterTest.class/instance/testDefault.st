tests
testDefault
	| streamConverter |

	streamConverter := self streamConverterClass default.
	self
		assert: streamConverter class == self defaultClass;
		assert: streamConverter isDefault;
		assert: streamConverter isImplicit.