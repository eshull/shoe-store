require("spec_helper")

describe(Shoe) do
  it { should have_and_belong_to_many(:stores) }
  it { should have_db_column(:price) }
  it { should validate_numericality_of(:price) }

end
