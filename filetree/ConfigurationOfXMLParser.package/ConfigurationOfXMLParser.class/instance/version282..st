obsolete - versions
version282: spec 
        <version: '2.8.2' imports: #('2.7.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.360'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.168'.
                ].