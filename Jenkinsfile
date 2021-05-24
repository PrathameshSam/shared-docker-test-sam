
// version of the shared jenkins lib to use
@Library('shared-lib@v1') _

// use a simple template (non-language specific)
podTemplates.simple {
  node(POD_LABEL) {
    // fetch job properties and git checkout
    job.fetch()
    // run an abitrary script
    sh './script.sh'
    // each of these are separate Dockerfiles to build; all three will be published
    job.containerize(file: 'Dockerfile-one').containerize(file: 'Dockerfile-two').containerize(file: 'Dockerfile-three')
  }
}