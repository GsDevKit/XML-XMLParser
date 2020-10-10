obsolete - versions
version268: spec 
        <version: '2.6.8' imports: #('2.6.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.342'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.153'.
                ].