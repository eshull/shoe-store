class Store < ActiveRecord::Base
  has_and_belongs_to_many(:shoes)

    before_save(:titlecase)
    validates(:name, {:presence => true, :uniqueness => true, :length => { :maximum => 100 }})

    def titlecase
      self.name = name.split.map(&:capitalize).join(' ')
    end

end
