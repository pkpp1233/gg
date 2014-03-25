json.array!(@genius) do |geniu|
  json.extract! geniu, :id, :first_name, :last_name, :string, :software_id, :linkedin_url
  json.url geniu_url(geniu, format: :json)
end
