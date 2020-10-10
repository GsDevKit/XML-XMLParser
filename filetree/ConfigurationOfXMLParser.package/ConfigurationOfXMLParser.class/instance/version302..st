obsolete - versions
version302: spec 
        <version: '3.0.2' imports: #('3.0.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.389'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.195'.
                ].