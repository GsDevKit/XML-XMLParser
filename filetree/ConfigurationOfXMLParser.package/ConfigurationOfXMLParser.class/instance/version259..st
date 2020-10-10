obsolete - versions
version259: spec 
        <version: '2.5.9' imports: #('2.5.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.330'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.140'.
                ].