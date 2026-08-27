class M8c < Formula
  desc "Remote display client for the Dirtywave M8 Tracker"
  homepage "https://github.com/laamaa/m8c"
  url "https://github.com/laamaa/m8c/archive/refs/tags/v2.2.3.tar.gz"
  sha256 "1fa5773a376e7b7ed5c65dcda5126d8e9933b1dbbaa95019e1afb025f5b6977a"
  license all_of: ["MIT", "CC-BY-SA-3.0", "Zlib"]

  depends_on "pkgconf" => :build
  depends_on "libserialport"
  depends_on "sdl3"

  def install
    inreplace "src/gamepads.c",
              'snprintf(db_filename, sizeof(db_filename), "%sgamecontrollerdb.txt", SDL_GetBasePath());',
              "snprintf(db_filename, sizeof(db_filename), \"#{pkgshare}/gamecontrollerdb.txt\");"

    system "make", "CC=#{ENV.cc}", "PREFIX=#{prefix}", "install"
    pkgshare.install "gamecontrollerdb.txt"
  end

  test do
    system bin/"m8c", "--list"
  end
end
