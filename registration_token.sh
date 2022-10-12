#!/bin/bash

registration_token=$(ssh -i bruno-demo.pem -t ubuntu@$1 "sudo gitlab-rails runner -e production \"puts Gitlab::CurrentSettings.current_application_settings.runners_registration_token\"")
registration_token_json="{\"registration_token\": \"${registration_token}\"}"
echo ${registration_token_json}
