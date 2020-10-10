obsolete - versions
version249: spec 
        <version: '2.4.9' imports: #('2.4.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.319'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.132'.
                ].