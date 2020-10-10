obsolete - versions
version250: spec 
        <version: '2.5.0' imports: #('2.5.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.321'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.133'.
                ].