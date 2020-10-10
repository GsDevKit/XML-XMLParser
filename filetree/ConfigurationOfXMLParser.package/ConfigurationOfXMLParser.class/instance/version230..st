obsolete - versions
version230: spec 
        <version: '2.3.0' imports: #('2.2.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.299'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.115'.
                ].