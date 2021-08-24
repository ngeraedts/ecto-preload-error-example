# Ecto Preload Error Minimum Reproducible Example

This repo holds a very basic example of an unhandled error from Ecto that seems
to bubble up through a `rescue` block.

To run this example, adjust the database configuration values in
`config/runtime.exs` to match your local environment, then run `mix test`.
