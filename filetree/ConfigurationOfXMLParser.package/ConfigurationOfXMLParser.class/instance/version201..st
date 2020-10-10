obsolete - versions
version201: spec 
        <version: '2.0.1' imports: #('2.0.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.269'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.91'.
                ].