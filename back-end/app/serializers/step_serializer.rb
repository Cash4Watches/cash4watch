class StepSerializer < ActiveModel::Serializer
  attributes :id, :step_index, :title, :desc, :completed
end
