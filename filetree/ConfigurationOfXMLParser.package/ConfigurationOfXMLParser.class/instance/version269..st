obsolete - versions
version269: spec 
        <version: '2.6.9' imports: #('2.6.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.344'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.155'.
                ].