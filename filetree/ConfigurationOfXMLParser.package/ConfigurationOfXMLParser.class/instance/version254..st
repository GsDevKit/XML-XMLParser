obsolete - versions
version254: spec 
        <version: '2.5.4' imports: #('2.5.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.325'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.136'.
                ].