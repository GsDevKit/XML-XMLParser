tests
testReset
	| adapter |

	super testReset.

	adapter := self newStreamAdapter.
	adapter
		upToEnd;
		reset.
	self assert: adapter limit = self inputCollectionLimit.