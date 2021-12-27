# action.yml
name: 'SCA Wrapper Action'
description: 'Wraps SCA actions to allow for flexibility in defining SCA build tools/languages'

runs:
  using: 'composite'
  steps:
    - name: Run action
      continue-on-error: true 
      uses: snyk/actions/$SNYK_ACTION_LANG@master
      with:
        args: --org=${{ env.SNYK-ORG-NAME }} --sarif-file-output=sca.sarif
        


