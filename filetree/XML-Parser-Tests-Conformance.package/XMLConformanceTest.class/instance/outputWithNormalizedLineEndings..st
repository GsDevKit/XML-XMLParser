private
outputWithNormalizedLineEndings: aString
	"just in case the LFs in the output method source got converted
	to CRs or CRLFs on fileIn"
	^ (XMLNestedStreamReader on: aString readStream) upToEnd