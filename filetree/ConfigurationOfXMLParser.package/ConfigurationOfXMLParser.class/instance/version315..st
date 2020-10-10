obsolete - versions
version315: spec 
        <version: '3.1.5' imports: #('3.1.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.407'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.204'.
                ].