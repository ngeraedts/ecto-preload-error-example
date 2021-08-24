import Config

case config_env() do
  :dev ->
    config :my_app, MyApp.Repo,
      database: "my_app_dev",
      username: System.get_env("DB_USER") || "vagrant",
      password: System.get_env("DB_PASSWORD"),
      hostname: "localhost",
      port: 5432

    config :logger, level: :debug

  :test ->
    config :my_app, MyApp.Repo,
      database: "my_app_test",
      username: System.get_env("DB_USER") || "vagrant",
      password: System.get_env("DB_PASSWORD"),
      hostname: "localhost",
      port: 5432

    config :logger, level: :warn
end
