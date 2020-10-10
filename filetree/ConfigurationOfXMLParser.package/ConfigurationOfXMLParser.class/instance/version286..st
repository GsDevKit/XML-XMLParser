obsolete - versions
version286: spec 
        <version: '2.8.6' imports: #('2.8.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.364'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.173'.
                ].