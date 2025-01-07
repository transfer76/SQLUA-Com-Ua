# frozen_string_literal: true

Rails.application.configure do
  if Rails.env.local?

    config.after_initialize do
      StrongMigrations.start_after = 20_250_107_200_604
      StrongMigrations.lock_timeout = 10.seconds
      StrongMigrations.statement_timeout = 1.hour
      StrongMigrations.auto_analyze = true
      StrongMigrations.safe_by_default = true
    end
  end
end
