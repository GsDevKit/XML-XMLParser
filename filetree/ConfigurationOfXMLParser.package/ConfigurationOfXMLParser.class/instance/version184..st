obsolete - versions
version184: spec 
        <version: '1.8.4' imports: #('1.8.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.251'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.78'.
                ].