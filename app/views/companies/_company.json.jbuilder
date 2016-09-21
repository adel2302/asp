json.extract! company, :id, :name, :phone_number, :created_at, :updated_at
json.url company_url(company, format: :json)