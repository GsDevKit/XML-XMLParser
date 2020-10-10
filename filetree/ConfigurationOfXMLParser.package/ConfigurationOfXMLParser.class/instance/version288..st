obsolete - versions
version288: spec 
        <version: '2.8.8' imports: #('2.8.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.367'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.180'.
                ].