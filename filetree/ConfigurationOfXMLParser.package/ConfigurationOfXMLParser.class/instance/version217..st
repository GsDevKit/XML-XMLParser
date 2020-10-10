obsolete - versions
version217: spec 
        <version: '2.1.7' imports: #('2.1.6-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.284'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.106'.
                ].