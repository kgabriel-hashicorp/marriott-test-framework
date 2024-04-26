curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @payload.json \
  https://app.terraform.io/api/v2/organizations/my-organization/workspaces



#list workspaces
curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  https://tfe.karla-gabriel.sbx.hashidemos.io/api/v2/organizations/kg-dev/workspaces?filter?project=prj-sKzjNwfUSiNSEVqz | jq '.data.[].attributes.name'


#create workspace
  curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request POST \
  --data @payload.json \
   https://tfe.karla-gabriel.sbx.hashidemos.io/api/v2/organizations/kg-dev/workspaces?filter?project=prj-sKzjNwfUSiNSEVqz | jq '.data.attributes.name'

#list workspace

  #delete

 curl \
  --header "Authorization: Bearer $TOKEN" \
  --header "Content-Type: application/vnd.api+json" \
  --request DELETE \
   https://tfe.karla-gabriel.sbx.hashidemos.io/api/v2/organizations/kg-dev/workspaces/workspace-in-project-custom-test-api

#listworkspaces