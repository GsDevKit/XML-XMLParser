obsolete - versions
version335: spec 
        <version: '3.3.5' imports: #('3.3.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.432'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.221'.
                ].