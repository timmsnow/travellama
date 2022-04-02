class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name, :continent, :intro

  def experiences
    ActiveModel::SerializableResource.new(object.experiences,  each_serializer: ExperienceSerializer)
  end
end
