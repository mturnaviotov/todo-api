class TodoSerializer < ActiveModel::Serializer
  attributes :id, :done, :comment, :date_end
end
