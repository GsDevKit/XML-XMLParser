obsolete - versions
version317: spec 
        <version: '3.1.7' imports: #('3.1.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.409'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.207'.
                ].