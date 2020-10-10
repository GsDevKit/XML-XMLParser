obsolete - versions
version262: spec 
        <version: '2.6.2' imports: #('2.6.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.333'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.144'.
                ].