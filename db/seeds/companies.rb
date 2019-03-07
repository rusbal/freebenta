companies = [
  'Matibay Group',
  'Girls and Moms',
  'Kami Ito',
  'John and Co',
  'Si Ate at Ako',
  'Marissa & Me',
  'Masikap Inc.'
]

if Company.count == 0
  companies.each do |name|
    Company.create! name: name
  end
end

