obsolete - versions
version232: spec 
        <version: '2.3.2' imports: #('2.3.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.300'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.117'.
                ].