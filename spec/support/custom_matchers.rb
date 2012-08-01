::RSpec::Matchers.define :have_error do |attribute, type|
  match do |actual|
    actual.valid?
    actual.errors.added?(attribute, type)
  end
end