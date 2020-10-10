obsolete - versions
version227: spec 
        <version: '2.2.7' imports: #('2.2.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.295'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.114'.
                ].