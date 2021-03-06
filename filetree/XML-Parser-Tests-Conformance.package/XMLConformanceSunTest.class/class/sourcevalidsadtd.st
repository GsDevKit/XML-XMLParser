xml source
sourcevalidsadtd
	"Source file: sun/valid/sa.dtd"

	^ '<?xml version="1.0" encoding="UTF-8"?>

    <!ELEMENT root (child|attributes)*>
    <!ELEMENT child (#PCDATA)>
    <!ELEMENT attributes EMPTY>

    <!--
	2.9 gives validity constraints applying to attributes
	in standalone docs:  no external defaults or decls
	causing normalization.

	3.3.3 describes the normalization rules
    -->

    <!ATTLIST attributes
	token		(a|b|c)		"a"
	notation	(nonce|foo|bar)	#IMPLIED
	nmtoken		NMTOKEN		#IMPLIED
	nmtokens	NMTOKENS	#IMPLIED
	id		ID		#IMPLIED
	idref		IDREF		#IMPLIED
	idrefs		IDREFS		#IMPLIED
	entity		ENTITY		#IMPLIED
	entities	ENTITIES	#IMPLIED
	cdata		CDATA		#IMPLIED
	>
    
    <!-- this needs normalization when used as an ID -->
    <!ENTITY internal	" internal&number; ">
    <!ENTITY number	"42">

    <!NOTATION nonce	SYSTEM "file:/dev/null">
    <!NOTATION foo	PUBLIC "-//public id//foo" "file:/dev/null">
    <!NOTATION bar	SYSTEM "file:/dev/tty">

    <!ENTITY unparsed-1 PUBLIC "-//some public//ID" "file:/dev/console"
			NDATA nonce>
    <!ENTITY unparsed-2 SYSTEM "scheme://host/data"
			NDATA foo>
'