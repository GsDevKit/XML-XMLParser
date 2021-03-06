private
percentAndPlusEncode: aString
	| writeStream |

	writeStream := (String new: aString size) writeStream.
	"use #to:do: for speed"
	1 to: aString size do: [:i | | nextChar |
		(UnreservedCharacters includes: (nextChar := aString at: i))
			ifTrue: [	
				nextChar asciiValue = 32 "Character space asciiValue"
					ifTrue: [writeStream nextPut: $+]
					ifFalse: [writeStream nextPut: nextChar]]
			ifFalse: [
				(XMLEncodingWriteStreamAdapter on:
					(XMLPercentEncodingWriteStreamAdapter on: writeStream))
						nextPut: nextChar]].
	^ writeStream contents.