Class {
	#name : #XMLElementTest,
	#superclass : #XMLNodesWithElementsTest,
	#category : #'XML-Tests-Parser-Nodes'
}

{ #category : #assertions }
XMLElementTest >> assertElement: anElement hasAttribute: anAttributeName equalTo: anAttributeValue [
	self
		assert: (anElement includesAttribute: anAttributeName);
		assert: (anElement attributeAt: anAttributeName) = anAttributeValue;
		assert: (anElement @ anAttributeName) = anAttributeValue;
		assert: (anElement attributeNodeAt: anAttributeName) notNil;
		assert: (anElement attributeNodeAt: anAttributeName) value = anAttributeValue
]

{ #category : #assertions }
XMLElementTest >> assertElement: anElement hasAttributes: aDictionary [
	self assert:
		((aDictionary isMemberOf: Dictionary)
			ifTrue: [(Dictionary newFrom: anElement attributes) = aDictionary]
			ifFalse: [anElement attributes = aDictionary])
]

{ #category : #assertions }
XMLElementTest >> assertElement: anElement hasContentString: aContentString withStrings: aStringArray [
	| combinedStrings |

	self assert: anElement contentString = aContentString.
	combinedStrings := anElement stringNodes collect: [:each | each string].
	self assert: combinedStrings asArray = aStringArray asArray.
]

{ #category : #assertions }
XMLElementTest >> assertElement: anElement hasName: aName attributes: aDictionary contentString: aString [
	self
		assert: (anElement isNamed: aName);
		assertElement: anElement hasAttributes: aDictionary;
		assert: anElement contentString = aString
]

{ #category : #assertions }
XMLElementTest >> assertNodeHasNoContentNodes: aNode [
	super assertNodeHasNoContentNodes: aNode.
	self assertNodeHasNoStringNodes: aNode.
]

{ #category : #assertions }
XMLElementTest >> assertNodeHasNoStringNodes: aNode [
	self
		deny: aNode hasStringNodes;
		assert: aNode stringNodes isEmpty;
		assert: aNode strings isEmpty
	
]

{ #category : #tests }
XMLElementTest >> test1emptyElement [
	self
		assertNode: XMLElement new hasTypes: #(isElement isContentNode);
		assertNodeHasNoChildren: XMLElement new
]

{ #category : #tests }
XMLElementTest >> test2elementNaming [
	| element |

	element := XMLElement new.
	self
		assertNode: element hasName: '' namespaceURI: '';
		assertNode: (element name: 'testElement') hasName: 'testElement' namespaceURI: ''.
	self
		assertNode: (element name: 'testPrefix:testElement' namespaceURI: 'http://test/')
		hasName: 'testPrefix:testElement'
		namespaceURI: 'http://test/'.
]

{ #category : #tests }
XMLElementTest >> test3elementContentString [
	| element str |

	str := self markupString.
	(element := XMLElement new) contentString: str.
	self
		assert: element hasChildren;
		assert: element hasContentNodes;
		assert: element hasStringNodes;
		assert: element contentString = str.

	"Intersperse between text"
	element addNode: XMLMockNode new.
	self
		assertElement: (element addContent: str)
		hasContentString: str, ' ', str
		withStrings: (Array with: str with: str).

	"addContent: should combine neighboring string nodes"
	self
		assertElement: (element addContent: (XMLString string: str))
		hasContentString: str, ' ', str, str
		withStrings: (Array with: str with: str, str).

	element addElement: ((XMLElement named: 'childElementWithContent') addContent: 'test content').
	self assert: (element contentStringAt: 'childElementWithContent') = 'test content'.
]

{ #category : #tests }
XMLElementTest >> test4elementAttributes [
	| element attrs |

	element := XMLElement new.
	self
		assert: (element attributeAt: 'foo') isEmpty;
		assert: (element attributeAt: 'foo' ifAbsent: ['absent']) = 'absent';
		deny: (element includesAttribute: 'foo').

	self
		assert: (element attributeAt: 'foo' put: 'test') = 'test';
		assert: element hasAttributes;
		assertElement: element hasAttribute: 'foo' equalTo: 'test';
		assert: (element attributeAt: 'bar' ifAbsentPut: ['test2']) = 'test2';
		assertElement: element hasAttribute: 'bar' equalTo: 'test2';
		assert: element attributeNames asArray =  #('foo' 'bar').

	self
		assert: element attributeAssociations asArray =
			(Array with: 'foo'->'test' with: 'bar'->'test2').
	self
		assertElement: element
		hasAttributes:
			(XMLOrderPreservingDictionary
				with: 'foo'->'test'
				with: 'bar'->'test2').

	self
		assert: (element removeAttribute: 'foo') = 'test';
		assert: (element removeAttribute: 'bar') = 'test2';
		deny: element hasAttributes.
]

{ #category : #tests }
XMLElementTest >> test5elementConstructors [
	| noAttributes attributes str element |

	noAttributes := XMLOrderPreservingDictionary new.
	self
		assertElement: (XMLElement named: 'foo')
		hasName: 'foo'
		attributes: noAttributes
		contentString: ''.

	attributes := XMLOrderPreservingDictionary with: 'foo'->'test1' with: 'bar'->'test2'.
	self
		assertElement: (XMLElement name: 'foo' attributes: attributes)
		hasName: 'foo'
		attributes: attributes
		contentString: ''.

	str := self markupString.
	self
		assertElement: (XMLElement named: 'foo')
		hasName: 'foo'
		attributes: noAttributes
		contentString: ''.
	self
		assertElement: (XMLElement name: 'foo' attributes: attributes)
		hasName: 'foo'
		attributes: attributes
		contentString: ''.

	element := XMLElement
		name: 'prefix:foo'
		namespaceURI: 'http://foo'
		attributes: attributes.
	self
		assertElement: element hasName: 'prefix:foo' attributes: attributes contentString: '';
		assertNode: element hasPrefix: 'prefix' uri: 'http://foo'.
]

{ #category : #tests }
XMLElementTest >> test6elementPrinting [
	| element attributes |

	element := (XMLElement named: 'element').
	attributes := XMLOrderPreservingDictionary with: 'b'->'two' with: 'a'->'one'.
	self
		assert: element printString = '<element />';
		assert: (element contentString: 'test') printString = '<element>test</element>';
		assert: (element setAttributes: attributes) printString = '<element b="two" a="one">test</element>'
]

{ #category : #tests }
XMLElementTest >> test7contentNodeEnumeration [
	| node nodes elements stringNodes contentNodes |

	node := XMLElement new.
	elements := self newElements: 3.
	stringNodes := self newStrings: 3.
	contentNodes := self intersperse: elements with: stringNodes.
	node addNodes: (self intersperseWithNodes: contentNodes).

	self
		assert: node contentNodes = contentNodes;
		should: [:block | node contentNodesDo: block] enumerate: contentNodes;
		should: [:block | node stringNodesDo: block] enumerate: stringNodes.
]