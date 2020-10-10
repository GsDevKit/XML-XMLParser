xml source
sourcevalidsa062xml
	"Source file: xmltest/valid/sa/062.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
]>
<doc>&#xe40;&#xe08;&#xe21;', 16rE2A asCharacter asString, 16rE4C asCharacter asString, '</doc>
'