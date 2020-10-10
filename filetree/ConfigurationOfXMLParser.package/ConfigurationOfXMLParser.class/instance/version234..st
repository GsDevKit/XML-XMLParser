obsolete - versions
version234: spec 
        <version: '2.3.4' imports: #('2.3.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.302'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.119'.
                ].