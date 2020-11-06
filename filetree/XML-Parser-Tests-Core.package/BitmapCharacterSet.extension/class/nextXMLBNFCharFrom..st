*XML-Parser-Tests-Core
nextXMLBNFCharFrom: aStream
	(aStream peek == $"
		or: [aStream peek == $'])
		ifTrue: [^ (aStream upTo: aStream next) first].
	(aStream peekFor: $#)
		ifTrue: [
			^ (XMLSmallIntegerReader
				readFrom: aStream
				withBase: 16
				andPrefixes: 'xX'
				orBase: 10) asCharacter].
	(aStream peekFor: $|)
		ifTrue: [^ nil].
	^ aStream next.