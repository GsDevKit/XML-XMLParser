obsolete - versions
version280: spec 
        <version: '2.8.0' imports: #('2.7.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.358'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.166'.
                ].