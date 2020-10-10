obsolete - versions
version233: spec 
        <version: '2.3.3' imports: #('2.3.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.301'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.118'.
                ].