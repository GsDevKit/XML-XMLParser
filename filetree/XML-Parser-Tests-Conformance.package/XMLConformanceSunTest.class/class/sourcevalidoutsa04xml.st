xml source
sourcevalidoutsa04xml
	"Source file: sun/valid/out/sa04.xml"

	^ '<!DOCTYPE attributes [
<!NOTATION bar SYSTEM ''file:/dev/tty''>
<!NOTATION foo PUBLIC ''-//public id//foo'' ''file:/dev/null''>
<!NOTATION nonce SYSTEM ''file:/dev/null''>
]>
<attributes cdata="nothing happens to this one!" entities="unparsed-1 unparsed-2" entity="unparsed-1" id="internal42" idref="internal42" idrefs="internal42 internal42 internal42" nmtoken="this-gets-normalized" nmtokens="this also gets normalized" notation="nonce" token="a"></attributes><?pi equals three?>'