json.extract! followrequest, :id, :recipient_id, :sender_id, :status, :created_at, :updated_at
json.url followrequest_url(followrequest, format: :json)
