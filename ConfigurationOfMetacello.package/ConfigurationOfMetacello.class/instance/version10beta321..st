versions
version10beta321: spec
  <version: '1.0-beta.32.1' imports: #('1.0-beta.32.1-baseline')>
  spec
    for: #'common'
    do: [ 
      spec blessing: #'development'.
      spec
        description:
          '- add squeak4.5.x as platform attribute
- minor hack to get Metacello Preview to bootstrap (again) on Squeak4.4 and Squeak4.5
1.0-beta.32.1 (dkh.758):
- Issue #65: port to Pharo-2.0
  https://github.com/dalehenrich/metacello-work/issues/65
1.0-beta.32.1 (dkh.762):
- adjust dependencies for tests
- fix tests when loaded from mcz files
1.0-beta.32.1 (dkh.764):
- switch to using http://smalltalkhub.com/mc/dkh/metacello/main as alternate repository to http://seaside.gemstone.com/ss/metacello
- fix Issue #151: travis builds hanging for Squeak-4.4 and Squeak4.5
  https://github.com/dalehenrich/metacello-work/issues/151
1.0-beta.32.1 (dkh.765):
- workaround for SmalltalkHub Issue 21: corrupted package .... Metacello-Reference.dkh.35
  https://code.google.com/p/smalltalk-hub/issues/detail?id=21
1.0-beta.32.1 (dkh.767):
- workaround for SmalltalkHub Issue 21: corrupted package .... Metacello-TestsPlatform.squeakCommon-dkh.9
- bootstrap from Metacello-Base needs to load Metacello-PharoCommonPlatform
1.0-beta.32.1 (dkh.774):
- fix Issue #172: Metacello-Base bootstrap code and configurations should reference seaside.gemtalksystems.com repos
  https://github.com/dalehenrich/metacello-work/issues/172'.
      spec author: 'dkh'.
      spec timestamp: '5/8/2013 00:22'.
      spec postLoadDoIt: #'metacelloPrimeRegistry'.
      spec
        project: 'FileTree' with: '1.0.1';
        project: 'Gofer' with: '1.0.5.1';
        project: 'Gofer Tests' with: '1.0.5.1'.
      spec
        package: 'Metacello-Base' with: 'Metacello-Base-dkh.107';
        package: 'Metacello-Core' with: 'Metacello-Core-dkh.678';
        package: 'Metacello-FileTree' with: 'Metacello-FileTree-dkh.29';
        package: 'Metacello-GitHub'
          with: 'Metacello-GitHub-ChristopheDemarey.25';
        package: 'Metacello-MC' with: 'Metacello-MC-dkh.674';
        package: 'Metacello-Reference' with: 'Metacello-Reference-dkh.36';
        package: 'Metacello-Tutorial' with: 'Metacello-Tutorial-dkh.26';
        package: 'OB-Metacello' with: 'OB-Metacello-dkh.83';
        package: 'Metacello-TestsReference'
          with: 'Metacello-TestsReference-dkh.20';
        package: 'Metacello-TestsCore' with: 'Metacello-TestsCore-dkh.31';
        package: 'Metacello-TestsMC' with: 'Metacello-TestsMC-dkh.357';
        package: 'Metacello-TestsTutorial'
          with: 'Metacello-TestsTutorial-dkh.40';
        package: 'Metacello-ToolBox' with: 'Metacello-ToolBox-dkh.131' ].
  spec
    for: #'squeakCommon'
    do: [ 
      spec
        project: 'OSProcess' with: '4.4.5';
        project: 'OmniBrowser' with: #'stable';
        project: 'HelpSystem' with: '1.1'.
      spec
        package: 'Metacello-TestsPlatform'
          with: 'Metacello-TestsPlatform.squeakCommon-dkh.9';
        package: 'Metacello-Help' with: 'Metacello-Help-dkh.12' ].
  spec
    for: #'pharo'
    do: [ 
      spec project: 'ProfStef' with: #'stable'.
      spec
        package: 'Metacello-ProfStef' with: 'Metacello-ProfStef-dkh.13';
        package: 'Metacello-TestsProfStef'
          with: 'Metacello-TestsProfStef-dkh.4';
        package: 'Metacello-PharoCommonPlatform'
          with: 'Metacello-PharoCommonPlatform-dkh.2' ].
  spec
    for: #'pharo1.x'
    do: [ spec package: 'Metacello-Platform' with: 'Metacello-Platform.pharo-dkh.34' ].
  spec
    for: #'pharo1.2.x'
    do: [ spec package: 'Metacello-Issue3758' with: 'Metacello-Issue3758-dkh.2' ].
  spec
    for: #'pharo1.3.x'
    do: [ spec package: 'Metacello-Issue3758' with: 'Metacello-Issue3758-dkh.2' ].
  spec
    for: #'pharo2.x'
    do: [ spec package: 'Metacello-Platform' with: 'Metacello-Platform.pharo20-dkh.33' ].
  spec
    for: #'pharo3.x'
    do: [ spec package: 'Metacello-Platform' with: 'Metacello-Platform.pharo20-dkh.33' ].
  spec
    for: #'squeak'
    do: [ spec package: 'Metacello-Platform' with: 'Metacello-Platform.squeak-dkh.22' ].
  spec
    for: #'gemstone'
    do: [ 
      spec
        project: 'OmniBrowser' with: #'stable';
        project: 'GsCore' with: '0.247';
        project: 'GsMonticello' with: '0.244.2'.
      spec
        package: 'Metacello-MC'
          with: [ spec preLoadDoIt: #'gemstone10beta24PreLoadDoIt' ];
        package: 'Metacello-TestsPlatform'
          with: 'Metacello-TestsPlatform.gemstone-dkh.4';
        package: 'Metacello-Platform'
          with: 'Metacello-Platform.gemstone-dkh.31' ]