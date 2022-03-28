defmodule FilesUtils do

  def read_file(path) do
    case File.open(path) do
      {:ok, file} ->
        IO.read(file, :line)
      {:error, reason} ->
        reason
    end
  end
end
