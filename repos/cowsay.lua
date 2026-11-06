return {
  url = "https://github.com/cowsay-org/cowsay",
  targets = {
    default = {
      build = function()
        return os.execute("make")
      end,
      install = function()
        return os.execute("make install prefix="..prefix)
      end,
      uninstall = function()
        return os.execute("make uninstall prefix="..prefix.." && rm -rf "..prefix.."/share/cowsay")
      end
    },
    quiet = {
      build = function()
        return os.execute("make &> /tmp/pkgit_build.log")
      end,
      install = function()
        return os.execute("make install prefix="..prefix.." &>/tmp/pkgit_build.log")
      end,
      uninstall = function()
        return os.execute("make uninstall prefix="..prefix.." &>/tmp/pkgit_build.log && rm -rf "..prefix.."/share/cowsay")
      end
    }
  }
}
