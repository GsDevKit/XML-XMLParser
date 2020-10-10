obsolete - versions
version281: spec 
        <version: '2.8.1' imports: #('2.7.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.359'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.167'.
                ].