obsolete - versions
version312: spec 
        <version: '3.1.2' imports: #('3.1.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.404'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.203'.
                ].