xml source
sourcenotwfsa175xml
	"Source file: xmltest/not-wf/sa/175.xml"

	^ '<!DOCTYPE doc [
<!ELEMENT doc (#PCDATA)>
<!ENTITY % e "', 16rFFFF asCharacter asString, '">
]>
<doc></doc>
'