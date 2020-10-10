building subclasses
buildSourceFileClassMethodFor: aFileReference in: aClass
	| sourceSelector pathString sourceStream isInString |

	sourceSelector := self sourceSelectorFor: aFileReference.
	pathString := self relativePathStringFor: aFileReference.

	sourceStream := (String new: aFileReference size) writeStream.
	"Use XMLFileHandle to get proper (inferred from BOMs) decoding of both
	UTF-8 and UTF-16. This makes it harder to test for invalid UTF in source
	but easier to get the xml source into the image."
	isInString := true.
	aFileReference fullName asXMLFileHandle readStreamDo: [:readStream |
		[readStream atEnd]
			whileFalse: [
				readStream peek == $'
					ifTrue: [
						isInString
							ifFalse: [
								sourceStream nextPutAll: ', '''.
								isInString := true].
						sourceStream
							nextPut: $'; "escape it"
							nextPut: readStream next]
					ifFalse: [
						(readStream peek isSeparator
							or: [readStream peek asciiValue between: 32 and: 126])
							ifTrue: [
								isInString
									ifFalse: [
										sourceStream nextPutAll: ', '''.
										isInString := true].
								sourceStream nextPut: readStream next]
							ifFalse: [
								isInString
									ifTrue: [
										sourceStream nextPut: $'.
										isInString := false].
								sourceStream
									nextPutAll: ', 16r';
									nextPutAll: readStream next asciiValue printStringHex;
									nextPutAll: ' asCharacter asString']]]].

	aClass class
		compile:
			(self sourceFileMethodTemplate format:
				(Array
					with: sourceSelector asString
					with: pathString
					with: sourceStream contents))
		classified: #'xml source'.