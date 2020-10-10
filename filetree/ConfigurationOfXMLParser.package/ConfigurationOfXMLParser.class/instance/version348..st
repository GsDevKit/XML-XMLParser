obsolete - versions
version348: spec 
        <version: '3.4.8' imports: #('3.4.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.447'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.229'.
                ].