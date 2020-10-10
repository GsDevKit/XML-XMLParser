obsolete - versions
version251: spec 
        <version: '2.5.1' imports: #('2.5.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.322'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.133'.
                ].