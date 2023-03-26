# kemal_blueprint_demo_app

Create project
```
crystal init app kemal_blueprint_demo_app
```

Add kemal and blueprint to the `shard.yml` file as dependency
```yaml
dependencies:
  blueprint:
    github: stephannv/blueprint
  kemal:
    github: kemalcr/kemal
```

Run
```
shards install
```
