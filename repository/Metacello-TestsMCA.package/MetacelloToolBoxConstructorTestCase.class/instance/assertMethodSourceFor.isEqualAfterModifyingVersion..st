private
assertMethodSourceFor: configurationName isEqualAfterModifyingVersion: versionString
  | cl original modified constructor pragma |
  constructor := MetacelloToolBoxConstructor new.
  constructor
    configuration: (cl := Smalltalk at: configurationName asSymbol) new.
  pragma := (constructor extractAllVersionPragmas at: versionString) at: 1.
  original := (cl sourceCodeAt: (MetacelloPlatform current selectorForPragma: pragma)) asString.
  [ 
  (MetacelloToolBox configurationNamed: configurationName)
    modifyVersionMethodForVersion: versionString;
    commitMethod ]
    on: MetacelloCannotUpdateReleasedVersionError
    do: [ :ex | ex resume ].
  modified := (cl sourceCodeAt: (MetacelloPlatform current selectorForPragma: pragma)) asString.
  (original respondsTo: #'trimBoth')
    ifTrue: [ self assert: original trimBoth = modified trimBoth ]
    ifFalse: [ 
      "Squeak"
	self assertBaselineSource: original equals: modified ]