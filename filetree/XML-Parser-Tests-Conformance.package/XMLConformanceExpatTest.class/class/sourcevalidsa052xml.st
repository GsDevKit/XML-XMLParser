xml source
sourcevalidsa052xml
	"Source file: xmltest/valid/sa/052.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
]>
<doc>', 16r10000 asCharacter asString, 16r10FFFD asCharacter asString, '</doc>
'