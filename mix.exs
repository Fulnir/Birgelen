defmodule BirgelenApp.Mixfile do
  use Mix.Project

  def project do
    [
      app: :birgelen_app,
      version: "0.0.3",
      elixir: "~> 1.5.2",
      elixirc_paths: elixirc_paths(Mix.env),
      compilers: [:phoenix, :gettext] ++ Mix.compilers,
      start_permanent: Mix.env == :prod,
      package: package(),
      description: description(),
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
        "coveralls.json": :test
      ],
      deps: deps(),
      # Docs
      docs: docs()
    ]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [
      mod: {BirgelenApp.Application, []},
      extra_applications: [:logger, :runtime_tools,
        :prometheus_ex, :prometheus_phoenix, :prometheus_plugs, :prometheus_process_collector,
        # Add edeliver to the END of the list
        :edeliver]
    ]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_),     do: ["lib"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:phoenix, "~> 1.3.0"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_html, "~> 2.10"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:gettext, "~> 0.11"},
      {:credo, "~> 0.9.0-rc1", only: [:dev, :test]},
      {:ex_doc, "~> 0.17", only: :dev, runtime: false},
      {:inch_ex, "~> 0.5", only: [:dev, :test]},
      {:excoveralls, "~> 0.7.2", only: :test},
      {:ex_unit_notifier, "~> 0.1", only: :test},
      {:mix_test_watch, "~> 0.2", only: :dev, runtime: false},
      {:bunt, "~> 0.2.0"},
      {:cowboy, "~> 1.0"},
      {:prometheus_ex, "~> 1.0"},
      {:prometheus_phoenix, "~> 1.0"},
      {:prometheus_plugs, "~> 1.0"},
      {:prometheus_process_collector, "~> 1.0"},
      {:distillery, "~> 1.5", warn_missing: false},
      {:edeliver, "~> 1.4"}
    ]
  end

  defp description do
    """
    Experimental: Die Webseite von Birgelen.
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :birgelen_app,
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Edwin Bühler"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/Fulnir/birgelen"}
    ]
  end

  defp docs do
    [
      name: "Birgelen",
      main: "README",
      formatters: ["html"],
      logo: "logo.png",
      source_url: "https://github.com/Fulnir/birgelen",
      homepage_url: "https://github.com/Fulnir/birgelen",
      extras: [
        "README.md"
        # ,"guides/overview.md"
      ]
    ]
  end

end
