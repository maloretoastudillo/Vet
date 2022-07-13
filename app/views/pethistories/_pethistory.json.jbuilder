json.extract! pethistory, :id, :date, :state, :weight, :height, :diagnosis, :anamnesis, :pet_id, :created_at, :updated_at
json.url pethistory_url(pethistory, format: :json)
