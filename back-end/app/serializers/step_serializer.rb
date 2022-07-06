class StepSerializer < ActiveModel::Serializer
  attributes :id, :index, :title, :desc, :completed
end
