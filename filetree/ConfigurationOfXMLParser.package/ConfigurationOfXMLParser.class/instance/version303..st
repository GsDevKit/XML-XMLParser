obsolete - versions
version303: spec 
        <version: '3.0.3' imports: #('3.0.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.390'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.196'.
                ].