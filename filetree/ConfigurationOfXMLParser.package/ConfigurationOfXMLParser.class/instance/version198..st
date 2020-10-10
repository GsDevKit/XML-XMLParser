obsolete - versions
version198: spec 
        <version: '1.9.8' imports: #('1.9.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.265'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.88'.
                ].