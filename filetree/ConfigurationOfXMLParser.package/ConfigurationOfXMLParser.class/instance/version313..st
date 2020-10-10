obsolete - versions
version313: spec 
        <version: '3.1.3' imports: #('3.1.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.405'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.204'.
                ].