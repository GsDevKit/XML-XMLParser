obsolete - versions
version319: spec 
        <version: '3.1.9' imports: #('3.1.9-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.411'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.208'.
                ].