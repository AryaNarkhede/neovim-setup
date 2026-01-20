return {
  "code-runner-plugin",
  dir = vim.fn.stdpath("config"),
  config = function()
    vim.keymap.set("n", "<leader>r", function()
      -- 1. Get File Info (CORRECTED)
      -- Use :t to get "Tail" (filename only) to avoid path duplication after cd
      local file = vim.fn.expand("%:t")          -- e.g., "main.cpp" (no path)
      local file_no_ext = vim.fn.expand("%:t:r") -- e.g., "main" (no path, no ext)
      local file_dir = vim.fn.expand("%:p:h")    -- e.g., "C:/Projects/Code"
      local ft = vim.bo.filetype

      -- 2. Define the Executor Map
      -- ADDED: Quotes around variables "$var" to handle spaces in filenames/paths
      local executors = {
        javascript = 'node "$fileName"',
        java = 'cd "$dir" && javac "$fileName" && java "$fileNameWithoutExt"',
        c = 'cd "$dir" && gcc "$fileName" -o "$fileNameWithoutExt.exe" && .\\"$fileNameWithoutExt.exe"',
        cpp = 'cd "$dir" && g++ -std=c++2b -Wall -Wextra -Wshadow -Wconversion -Wpedantic -g "$fileName" -o "$fileNameWithoutExt.exe" && .\\"$fileNameWithoutExt.exe"',
        python = 'python -u "$fileName"',
        php = 'php "$fileName"',
        perl = 'perl "$fileName"',
        ruby = 'ruby "$fileName"',
        go = 'go run "$fileName"',
        lua = 'lua "$fileName"',
        rust = 'cd "$dir" && rustc "$fileName" && .\\"$fileNameWithoutExt.exe"',
        powershell = 'powershell -ExecutionPolicy ByPass -File "$fileName"',
        bat = 'cmd /c "$fileName"',
        shellscript = 'bash "$fileName"',
        typescript = 'ts-node "$fileName"',
        dart = 'dart "$fileName"',
        haskell = 'runghc "$fileName"',
        nim = 'nim compile --verbosity:0 --hints:off --run "$fileName"',
        zig = 'zig run "$fileName"',
      }

      -- 3. Get command and replace variables
      local cmd = executors[ft]
      if cmd then
        -- IMPORTANT: Escape the $ with % for Lua gsub
        cmd = cmd:gsub("%$fileNameWithoutExt", file_no_ext)
        cmd = cmd:gsub("%$fileName", file)
        cmd = cmd:gsub("%$dir", file_dir)

        -- 4. Execute in split terminal
        vim.cmd("split | term " .. cmd)
        vim.cmd("startinsert")
      else
        vim.notify("No runner configured for filetype: " .. ft, vim.log.levels.WARN)
      end
    end, { desc = "Run Code (Universal)" })
  end,
}