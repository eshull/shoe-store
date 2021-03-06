require("spec_helper")

describe(Store) do
  it { should have_and_belong_to_many(:shoes) }
  it { should validate_presence_of(:name) }
  it { should validate_length_of(:name) }
  it { should validate_uniqueness_of(:name) }
end
