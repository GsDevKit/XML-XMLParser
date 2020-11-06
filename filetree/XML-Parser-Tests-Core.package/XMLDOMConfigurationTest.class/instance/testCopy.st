tests
testCopy
	| configuration nodeFactory copy |

	super testCopy.

	nodeFactory := self nodeFactoryClass new.
	(configuration := self newConfiguration)
		preservesCDataNodes: true;
		preservesCommentNodes: true;
		preservesIgnorableWhitespace: true;
		nodeFactory: nodeFactory.
	copy := configuration copy.
	self
		assert: copy preservesCDataNodes equals: configuration preservesCDataNodes;
		assert: copy preservesCommentNodes equals: configuration preservesCommentNodes;
		assert: copy preservesIgnorableWhitespace equals: configuration preservesIgnorableWhitespace;
		deny: copy nodeFactory == configuration nodeFactory;
		assert: copy nodeFactory class equals: configuration nodeFactory class.