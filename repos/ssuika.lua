return {
  url = "https://codeberg.org/nzuum/ssuika",
  targets = {
    default = {
      build = function()
        return os.execute("make")
      end,
      install = function()
        return os.execute("cp bin/ssuika "..install_directories.bin)
      end,
      uninstall = function()
        return os.execute("rm "..install_directories.bin.."/ssuika")
      end
    },
    quiet = {
      build = function()
        return os.execute("make &>/tmp/pkgit_build.log")
      end,
      install = function()
        return os.execute("cp bin/ssuika "..install_directories.bin)
      end,
      uninstall = function()
        return os.execute("rm "..install_directories.bin.."/ssuika")
      end
    }
  }
}