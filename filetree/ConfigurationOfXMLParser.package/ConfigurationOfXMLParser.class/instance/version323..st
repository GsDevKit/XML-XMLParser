obsolete - versions
version323: spec 
        <version: '3.2.3' imports: #('3.2.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.416'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.210'.
                ].