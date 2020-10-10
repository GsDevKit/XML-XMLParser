obsolete - versions
version297: spec 
        <version: '2.9.7' imports: #('2.9.7-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.380'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.189'.
                ].