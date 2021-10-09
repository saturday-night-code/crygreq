<p align="center"><img src="https://avatars.githubusercontent.com/u/87999310" alt="saturday night code logo" width="122px" style="border-radius: 10px"/></p>

<h1 align="center">crygreq</h1>

Simple HTTPS request in Crystal.

## What was used?

- [JSON/Serializable](https://crystal-lang.org/api/1.1.1/JSON.html)
- [HTTP/Client](https://crystal-lang.org/api/1.1.1/HTTP/Client.html)

## :runner: To run this project?

First, you need to have installed Crystal and Crest.

<details>
  <summary>Install: Crystal</summary>

  For Debian/Ubuntu based system:

  1. `sudo apt-get update`
  2. Install Crystal: `curl https://dist.crystal-lang.org/apt/setup.sh | sudo bash` and `sudo apt-get install build-essential crystal`

  After installation, run: `crystal --version` to verify that it was correctly installed.
  
  For Windows 10:
  1. The Crystal compiler doesn’t run on Windows yet, but it can be used with WSL (use linux installation guide in this case).
</details>

After Crystal installation, in project's root folder, run: `crystal run ./src/crygreq.cr`

## Contributing

1. Fork it (<https://github.com/saturday-night-code/crygreq/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
