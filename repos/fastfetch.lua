return {
  url = "https://github.com/fastfetch-cli/fastfetch/",
  targets = {
    default = {
      build = function()
        return os.execute("cmake -B build -DCMAKE_INSTALL_PREFIX="..prefix.." && cmake --build build")
      end,
      install = function()
        return os.execute("cmake --install build")
      end,
      uninstall = function()
        return os.execute("rm "..install_directories.bin.."/fastfetch && rm "..install_directories.bin.."/flashfetch")
      end,
    },
    quiet = {
      build = function()
        return os.execute("cmake -B build -DCMAKE_INSTALL_PREFIX="..prefix.." &>/tmp/pkgit_build.log && cmake --build build &>/tmp/pkgit_build.log")
      end,
      install = function()
        return os.execute("cmake --install build &>/tmp/pkgit_build.log")
      end,
      uninstall = function()
        return os.execute("rm "..install_directories.bin.."/fastfetch && rm "..install_directories.bin.."/flashfetch")
      end,
    },
  }
}
