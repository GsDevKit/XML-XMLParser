obsolete - versions
version349: spec 
        <version: '3.4.9' imports: #('3.4.8-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.448'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.229'.
                ].