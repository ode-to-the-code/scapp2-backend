class EntrySerializer < ActiveModel::Serializer
  attributes :id, :incident_id, :content, :selftalk, :friendresponse
end
