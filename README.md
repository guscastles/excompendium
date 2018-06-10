# Excompendium

A port to Elixir for the Compendium IBIS tool

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `excompendium` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:excompendium, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/excompendium](https://hexdocs.pm/excompendium).

## Languages and Tech Stuff

### User Story Mapping

RealtimeBoard

> https://realtimeboard.com/app/board/o9J_kzAjQgY=/

### Rationale

The intent of this project is to create a fully operational Dialogue Mapping tool, following the same great pattern established by
the Compendium tool. Using a different technology from the original Java world, the wishful stack tech is as follows:

* Functional programming style, using Elixir and the Phoenix web framework.
* Some Javascript framework, added with HTML5 graphical features (ReactJS, Angular, VueJS, anything else?).
* A reliable DBMS, such as PostrgreSQL. I will move away from NoSQL databases for now, but I reckon the Ecto module can create the wrapper for 
any DB layer without any problem.
* Some Python behind the scenes, if a Graph handling layer is needed. ErlPort provides a very nice integration for that.

I will be adding the initial User Story Mapping for the project in the coming days.

Cheers!
