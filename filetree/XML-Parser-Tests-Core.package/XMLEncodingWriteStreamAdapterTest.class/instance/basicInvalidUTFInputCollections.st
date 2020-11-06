accessing
basicInvalidUTFInputCollections
	"code points greater than U+10FFFF aren't tested for because GS Characters
	can only contain values in the range of U+0-10FFFF"
	^ Array
		with: (String with: 16rD800 asCharacter) "first surrogate code point"
		with: (String with: 16rDFFF asCharacter) "last surrogate code point"