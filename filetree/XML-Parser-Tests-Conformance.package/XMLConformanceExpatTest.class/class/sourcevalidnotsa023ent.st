xml source
sourcevalidnotsa023ent
	"Source file: xmltest/valid/not-sa/023.ent"

	^ '<!ELEMENT doc (#PCDATA)>
<!ENTITY % e1 "do">
<!ENTITY % e2 "c">
<!ENTITY % e3 "%e1;%e2;">
<!ATTLIST %e3; a1 CDATA "v1">
'