obsolete - versions
version331: spec 
        <version: '3.3.1' imports: #('3.3.0-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.426'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.217'.
                ].