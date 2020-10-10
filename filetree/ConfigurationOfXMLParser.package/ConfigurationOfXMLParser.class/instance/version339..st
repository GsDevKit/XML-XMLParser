obsolete - versions
version339: spec 
        <version: '3.3.9' imports: #('3.3.9-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.438'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.224'.
                ].