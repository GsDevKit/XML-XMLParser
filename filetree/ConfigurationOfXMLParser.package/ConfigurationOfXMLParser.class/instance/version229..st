obsolete - versions
version229: spec 
        <version: '2.2.9' imports: #('2.2.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.298'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.115'.
                ].