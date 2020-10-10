obsolete - versions
version321: spec 
        <version: '3.2.1' imports: #('3.2.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.413'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.209'.
                ].