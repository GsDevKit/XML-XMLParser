tests
testLimit
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter limit = self inputCollectionLimit;
		assert: (adapter limit: self inputCollectionLimit + 1) == adapter;
		assert: adapter limit = (self inputCollectionLimit + 1).