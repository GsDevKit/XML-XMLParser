obsolete - versions
version290: spec 
        <version: '2.9.0' imports: #('2.8.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.371'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.182'.
                ].