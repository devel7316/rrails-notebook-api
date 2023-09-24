namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do

    puts "Cadastrando contatos com faker..."
    100.times do
      Contact.create!(
        name:      Faker::Name.name,
        email:     Faker::Internet.email,
        birthdate: Faker::Date.between(from: 45.years.ago, to: 20.years.ago)
      )
    end  
    puts "Contatos cadastrados com sucesso."
    
  end

end
