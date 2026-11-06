return {
  url = "https://github.com/martanne/vis",
  --[[
  dependencies = {
    ncurses = {
    
    }
    lua = {
      
    }
    lpeg = {
     
    },
    tre = {
    
    },
  },
  ]]
  targets = {
    default = {
      build = function()
        return os.execute("./configure &&  make")
      end,
      install =	function()
	return os.execute("make install PREFIX="..prefix)
      end,
      uninstall	= function()
	return os.execute("make uninstall PREFIX="..prefix)
      end
    },
    quiet = {
      build = function()
      	return os.execute("./configure &> /dev/null && make &> /dev/null")
      end,
      install = function()
        return os.execute("make install PREFIX="..prefix.." &> /dev/null")
      end,
      uninstall = function()
      	return os.execute("make uninstall PREFIX="..prefix.." &> /dev/null")
      end
    },
  }
}
