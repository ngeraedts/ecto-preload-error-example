alias MyApp.Repo
alias MyApp.Person
alias MyApp.Address
alias MyApp.PhoneNumber

Repo.insert!(%Person{
  name: "homer.simpson",
  addresses: [
    %Address{
      street: "742 Evergreen Terrace",
      city: "Springfield",
      state: "Oregon",
      country: "USA",
      description: "home"
    },
    %Address{
      street: "100 Industrial Way",
      city: "Springfield",
      state: "Oregon",
      country: "USA",
      description: "home"
    }
  ],
  phone_numbers: [
    %PhoneNumber{
      number: "555-1234",
      description: "home"
    },
    %PhoneNumber{
      number: "555-5678",
      description: "work"
    }
  ]
})
