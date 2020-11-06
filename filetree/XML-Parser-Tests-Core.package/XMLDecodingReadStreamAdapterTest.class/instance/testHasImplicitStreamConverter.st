tests
testHasImplicitStreamConverter
	| adapter |

	adapter := self newStreamAdapter.
	self assert:
		adapter hasImplicitStreamConverter = adapter streamConverter isImplicit.