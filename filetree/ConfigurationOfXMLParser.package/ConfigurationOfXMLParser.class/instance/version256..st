obsolete - versions
version256: spec 
        <version: '2.5.6' imports: #('2.5.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.327'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.138'.
                ].