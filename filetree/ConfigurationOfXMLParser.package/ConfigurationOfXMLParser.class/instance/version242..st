obsolete - versions
version242: spec 
        <version: '2.4.2' imports: #('2.4.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.310'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.125'.
                ].