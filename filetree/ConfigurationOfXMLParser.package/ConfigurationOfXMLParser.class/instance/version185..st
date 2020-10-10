obsolete - versions
version185: spec 
        <version: '1.8.5' imports: #('1.8.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.252'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.79'.
                ].