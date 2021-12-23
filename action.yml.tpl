# action.yml
name: 'SCA Action'
description: 'SCA Action'
inputs:
  base:
    description: 'build tool or language'
    required: true
    default: ''

runs:
  using: 'composite'
  steps:
    - name: Run maven action
      uses: snyk/actions/$SNYK_ACTION_LANG
      with:
        args: --org=${{ env.SNYK-ORG-NAME }} --sarif-file-output=sca.sarif
        


