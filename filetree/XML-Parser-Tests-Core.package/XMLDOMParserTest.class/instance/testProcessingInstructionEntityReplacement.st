tests
testProcessingInstructionEntityReplacement
	| document doctypeDeclaration root |

	document :=
		XMLDOMParser parse:
			'<?xml version="1.1" standalone="yes"?>
			<!DOCTYPE root [
				<!ENTITY % first "<?firstTarget first>Data?>">
				%first;
				<!ENTITY second "<?secondTarget second?Data?>">
			]><root>&second;</root> '.

	self
		assert: document version equals: 1.1;
		assert: document hasDoctypeDeclaration;
		assert: document nodes size equals: 1.

	doctypeDeclaration := document doctypeDeclaration.
	self
		assert: doctypeDeclaration nodes size equals: 3;
		assert: doctypeDeclaration nodes second isPI;
		assert: doctypeDeclaration nodes second target equals: 'firstTarget';
		assert: doctypeDeclaration nodes second data equals: 'first>Data'.

	root := document root.
	self
		assert: root nodes size equals: 1;
		assert: root firstNode isPI;
		assert: root firstNode target equals: 'secondTarget';
		assert: root firstNode data equals: 'second?Data'.