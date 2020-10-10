obsolete - versions
version264: spec 
        <version: '2.6.4' imports: #('2.6.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.336'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.146'.
                ].