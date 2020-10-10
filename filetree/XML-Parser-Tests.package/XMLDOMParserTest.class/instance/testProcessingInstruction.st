tests
testProcessingInstruction
	| document |

	document :=
		XMLDOMParser parse:
			'<?xml version="1.1" standalone="yes"?><?firstTarget first>Data?>',
			'<root><?secondTarget second?Data?></root> '.

	self
		assert: document version equals: 1.1;
		assert: document nodes size equals: 2;
		assert: document firstNode isPI;
		assert: document firstNode target equals: 'firstTarget';
		assert: document firstNode data equals: 'first>Data';
		assert: document root firstNode target equals: 'secondTarget';
		assert: document root firstNode data equals: 'second?Data'.