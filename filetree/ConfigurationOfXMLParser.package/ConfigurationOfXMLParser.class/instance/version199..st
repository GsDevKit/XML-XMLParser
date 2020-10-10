obsolete - versions
version199: spec 
        <version: '1.9.9' imports: #('1.9.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.266'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.89'.
                ].