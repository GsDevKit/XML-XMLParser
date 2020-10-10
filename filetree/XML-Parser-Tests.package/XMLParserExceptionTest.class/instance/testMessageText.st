tests
testMessageText
	| exception |

	exception := self newExceptionWithErrorMessage.
	self assert: exception messageText equals: self errorMessage.

	"column numbers without line numbers are ignored"
	(exception := self newExceptionWithErrorMessage)
		columnNumber: self columnNumber.
	self assert: exception messageText equals: self errorMessage.

	(exception := self newExceptionWithErrorMessage)
		lineNumber: self lineNumber.
	self assert: exception messageText equals: self errorMessageWithLineNumber.

	(exception := self newExceptionWithErrorMessage)
		baseURI: self baseURI.
	self assert: exception messageText equals: self errorMessageWithBaseURI.

	(exception := self newExceptionWithErrorMessage)
		lineNumber: self lineNumber;
		columnNumber: self columnNumber.
	self assert: exception messageText equals: self errorMessageWithLineAndColumnNumber.

	(exception := self newExceptionWithErrorMessage)
		lineNumber: self lineNumber;
		baseURI: self baseURI.
	self assert: exception messageText equals: self errorMessageWithLineNumberAndBaseURI.

	"column numbers without line numbers are ignored"
	(exception := self newExceptionWithErrorMessage)
		columnNumber: self columnNumber;
		baseURI: self baseURI.
	self assert: exception messageText equals: self errorMessageWithBaseURI.

	(exception := self newExceptionWithErrorMessage)
		lineNumber: self lineNumber;
		columnNumber: self columnNumber;
		baseURI: self baseURI.
	self assert:
		exception messageText equals:
			self errorMessageWithLineAndColumnNumberAndBaseURI.