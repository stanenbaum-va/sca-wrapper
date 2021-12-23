# action.yml
name: 'SCA Wrapper Action'
description: 'Wraps SCA actions to allow for flexibility in defining SCA build tools/languages'

runs:
  using: 'composite'
  steps:
    - name: Run maven action
      uses: snyk/actions/$SNYK_ACTION_LANG
      with:
        args: --org=${{ env.SNYK-ORG-NAME }} --sarif-file-output=sca.sarif
        


