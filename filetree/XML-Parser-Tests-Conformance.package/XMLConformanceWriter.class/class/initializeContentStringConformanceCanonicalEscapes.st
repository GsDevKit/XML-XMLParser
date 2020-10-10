class initialization
initializeContentStringConformanceCanonicalEscapes
	ContentStringConformanceCanonicalEscapes :=
		ContentStringCanonicalEscapes copy
			at: 9 put: '&#9;';
			at: 10 put: '&#10;';
			at: 13 put: '&#13;';
			at: $> asciiValue put: '&gt;';
			yourself