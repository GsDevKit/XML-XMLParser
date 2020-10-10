obsolete - versions
version265: spec 
        <version: '2.6.5' imports: #('2.6.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.338'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.147'.
                ].