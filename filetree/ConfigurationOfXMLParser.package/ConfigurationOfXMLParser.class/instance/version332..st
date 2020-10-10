obsolete - versions
version332: spec 
        <version: '3.3.2' imports: #('3.3.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.428'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.218'.
                ].