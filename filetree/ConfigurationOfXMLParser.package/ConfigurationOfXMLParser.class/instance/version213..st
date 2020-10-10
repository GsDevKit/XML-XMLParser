obsolete - versions
version213: spec 
        <version: '2.1.3' imports: #('2.1.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.280'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.103'.
                ].