json.array!(@patients) do |patient|
  json.extract! patient, :id, :abnormal, :fibrosis, :tbx, :hcying, :gg, :ret, :emph, :user_id
  json.url patient_url(patient, format: :json)
end
