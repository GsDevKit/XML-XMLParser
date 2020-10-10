obsolete - versions
version337: spec 
        <version: '3.3.7' imports: #('3.3.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.435'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.223'.
                ].