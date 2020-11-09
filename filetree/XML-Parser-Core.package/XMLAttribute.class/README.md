The class represents an attribute node stored in an attribute node list. The name of an attribute node can be namespaced using prefixes, but the prefix must be mapped to a namespace URI in the containing element node. Unprefixed attributes have no namespace, not even a default if one is in scope, per the XML namespace standard.

The element of an attribute can be accessed with #element, but also with #parent, because attributes are modeled so their element is their parent (to simplify the implementation of the XPath library).