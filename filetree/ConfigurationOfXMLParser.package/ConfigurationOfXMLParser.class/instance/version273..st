obsolete - versions
version273: spec 
        <version: '2.7.3' imports: #('2.7.3-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.351'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.160'.
                ].