require("spec_helper")

describe(Shoe) do
  it { should have_and_belong_to_many(:stores) }
  it { should have_db_column(:price) }
  it { should validate_numericality_of(:price) }
  it { should validate_presence_of(:price) }
  it { should validate_presence_of(:brand) }
  it { should validate_uniqueness_of(:brand) }

end
