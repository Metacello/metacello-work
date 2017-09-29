running
setUp
	| repo |
	super setUp.
	MetacelloPlatform current clearPackageCache.
	repo := self monticelloRepository.
	gofer := Gofer new.
	gofer disablePackageCache.
	gofer repository: repo.
	MetacelloPlatform current
		globalNamed: #Metacello_Gofer_Test_Repository
		put: repo.
	repo := self configurationRepository.
	gofer repository: repo.
	MetacelloPlatform current
		globalNamed: #Metacello_Configuration_Test_Repository
		put: repo.
	gofer version: 'MetacelloTestConfigurationOfProjectIssue125-dkh.1'.
	gofer metacelloLoad.
	initialWorkingCopyList := MetacelloPlatform current workingCopyNames