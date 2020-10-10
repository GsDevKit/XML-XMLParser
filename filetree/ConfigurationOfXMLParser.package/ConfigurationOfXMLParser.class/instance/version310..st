obsolete - versions
version310: spec 
        <version: '3.1.0' imports: #('3.0.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.399'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.201'.
                ].