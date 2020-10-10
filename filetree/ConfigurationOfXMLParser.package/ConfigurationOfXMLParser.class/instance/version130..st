obsolete - versions
version130: spec
	<version: '1.3.0' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec description: 'Enhancements made by Monty. These updates add validation against internal and external DTDs, proper replacement of general and parameter entites, customizable resolution of external parsed entities using Zinc and FileSystem, awareness of notations and unparsed entities, preservation of the internal DTD subset by the DOM parser (so printing a parsed doc with a DTD will produce approximately what was input), line numbers reporting in error messages, and better well-formed and validity constraints.

I had to largely rewrite the tokenizer to make everything work, but I followed the spec closely, and it is about the same speed as long as there is no DTD to validate against.'.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.184';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.28' 
				].
	
	