versions
version350: spec
	<version: '3.5.0'>

	spec for: #'common' do: [ 
		spec
			baseline: 'XMLWriter' with: [ 
				spec 
					className: 'BaselineOfXMLParser';
					repository: 'github://pharo-contributions/XML-XMLParser:3.5.0/src' ]]