tests
testInheritMessageFrom
	| exception otherException |

	exception := self newException.
	otherException := self newOtherExceptionWithErrorMessage.
	self
		assert: (exception inheritMessageFrom: otherException) == exception;
		assert:
			exception messageText equals:
				('({1}) {2}' format:
					(Array
						with: self otherExceptionClass name
						with: self errorMessage)).