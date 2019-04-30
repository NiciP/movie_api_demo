FactoryBot.define do
  factory :movie do
    title { 'Title' }
    description { 'lorem' }
    year { Date.today }
  end
end