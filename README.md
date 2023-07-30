# mruby-esp32-mcpwm

MCPWM library for mruby-esp32.

## Installation

You need [esp-idf v5.0](https://docs.espressif.com/projects/esp-idf/en/release-v5.0/esp32/index.html) to use this mrbgems.

Add the line below to your `build_config.rb`:

```ruby
  conf.gem :github => 'mruby-esp32/mruby-esp32-mcpwm'
```

## Examples

```ruby
mcpwm = MCPWM.new(1)  # GPIO pin = 1
mcpwm.frequency(50)   # set frequency(Hz) of MCPWM
mcpwm.duty(10)        # set duty(%) of MCPWM
# => drive with frequency=50Hz(Period=20_000us), duby=10%(Pulse Width=2000us)

mcpwm = MCPWM.new(1, freq: 100, duty: 40)
# => drive with frequency=100Hz(Period=10_000us), duby=40%(Pulse Width=4000us)

mcpwm = MCPWM.new(1)
mcpwm.period_us(25_000)
mcpwm.pulse_width_us(5_000)
# => drive with frequency=40Hz(Period=25_000us), duby=20%(Pulse Width=5000us)
```

## LICENSE

MIT License.
