obsolete - versions
version207: spec 
        <version: '2.0.7' imports: #('2.0.5-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.275'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.97'.
                ].