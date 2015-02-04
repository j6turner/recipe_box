require("spec_helper")

describe(Ingredient) do
  it { should have_and_belong_to_many(:recipes) }
  it { should have_many(:amounts) }
end
