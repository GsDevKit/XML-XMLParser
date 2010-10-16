"
Classes using this trait must override #notifier to return an instance of XMLNotifier. Instances can then notify dependent objects of changes by sending themselves any of the messages under ""notification,"" which each take a selector that observers are expected to understand and possibly one or more arguments to send with it.

To get an approximate list of notification selectors that a class using this trait expects observers to implement, send this class #notifications.
"
Trait {
	#name : #TXMLObservable,
	#category : #'XML-Parser-Nodes'
}

{ #category : #accessing }
TXMLObservable classSide >> notifications [
	| notifications parser parsedMethods methodNode firstArgument |

	notifications := WriteStream on: (Array new: 10).
	parser := Parser new.
	parsedMethods := IdentityDictionary new.
	(self allMethodsInCategory: #notification)
		do: [:notifierSelector |
			(SystemNavigation default
				allSendersOf: notifierSelector
				inClass: self)
				do: [:methodReference |
					methodNode :=	
						parsedMethods
							at: methodReference selector
							ifAbsentPut:
								(parser
									parse: methodReference sourceCode
									class: self).
					methodNode nodesDo: [:node |
						(node isMessage
							and: [(node selector key asSymbol = notifierSelector)
								and: [(firstArgument := node arguments first) isLiteral]])
							ifTrue: [notifications nextPut: firstArgument key asSymbol]]]].
	^ notifications contents.
]

{ #category : #observing }
TXMLObservable >> addObserver: anObserver [
	self notifier addObserver: anObserver
]

{ #category : #accessing }
TXMLObservable >> notifier [
	"Override to return an instance of XMLNotifier"
	self subclassResponsibility
]

{ #category : #notification }
TXMLObservable >> notifyOf: aSelector with: anArgument [
	self notifier notifyOf: aSelector with: anArgument
]

{ #category : #notification }
TXMLObservable >> notifyOf: aSelector with: aFirstArgument with: aSecondArgument [
	self notifier
		notifyOf: aSelector
		with: aFirstArgument
		with: aSecondArgument
]

{ #category : #notification }
TXMLObservable >> notifyOf: aSelector with: aFirstArgument with: aSecondArgument with: aThirdArgument [
	self notifier
		notifyOf: aSelector
		with: aFirstArgument
		with: aSecondArgument
		with: aThirdArgument
]

{ #category : #notification }
TXMLObservable >> notifyOf: aSelector withArguments: anArray [
	self notifier notifyOf: aSelector withArguments: anArray
]

{ #category : #observing }
TXMLObservable >> removeObserver: anObserver [
	self notifier removeObserver: anObserver
]