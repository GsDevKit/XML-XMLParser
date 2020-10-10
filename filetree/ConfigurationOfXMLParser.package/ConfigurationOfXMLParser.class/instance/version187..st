obsolete - versions
version187: spec 
        <version: '1.8.7' imports: #('1.8.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.254'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.81'.
                ].