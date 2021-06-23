class IncidentSerializer < ActiveModel::Serializer
  attributes :id, :title, :date
  has_many :entries

end
