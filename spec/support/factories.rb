FactoryGirl.define do
  factory :author do
    name 'Martin Svalin'
  end

  factory :decision_point do
    text "All data should be open by default"
  end

  factory :proposal do
    number "1.2"
    header  "Open data in government should be the default"
    body   "Open data has come of age. Government data should be open for reasons of transparency, entrepreneurship and efficiency."
    after(:build) do |proposal|
      proposal.authors << FactoryGirl.build(:author)
      proposal.decision_points << FactoryGirl.build(:decision_point, proposal: proposal)
    end
  end
end