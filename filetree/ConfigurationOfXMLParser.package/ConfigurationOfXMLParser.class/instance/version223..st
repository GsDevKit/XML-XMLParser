obsolete - versions
version223: spec 
        <version: '2.2.3' imports: #('2.2.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.291'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.110'.
                ].