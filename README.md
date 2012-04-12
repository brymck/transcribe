# Transcribe

Transcribes a language into IPA

## Installation

Add this line to your application's Gemfile:

    gem 'transcribe'

And then execute:

    bundle

Or install it yourself as:

    gem install transcribe

## Usage

Transcribe a phrase:

    transcribe dutch "hallo mensen"
    # => ɦɑlɔ mɛnsɛn 

Transcribe a file:

    transcribe dutch hello_world.txt

Write transcription to a file:

    transcribe dutch "hallo mensen" > hello_world.txt

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
