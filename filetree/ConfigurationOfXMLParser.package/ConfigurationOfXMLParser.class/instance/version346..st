obsolete - versions
version346: spec 
        <version: '3.4.6' imports: #('3.4.2-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.445'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.227'.
                ].