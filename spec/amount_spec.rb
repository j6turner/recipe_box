require("spec_helper")

describe(Amount) do
  it { should belong_to(:ingredient) }
end
