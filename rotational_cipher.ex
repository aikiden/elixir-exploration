defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.
  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()

  def rotate(text, shift) do
    IO.puts(text)
    #convert text string to list of ascii codes after rotating the cipher and return the new list as a string:
    List.to_string(Enum.map(to_charlist(text), fn (s) -> [] ++ nudge_char(s, shift) end))
  end

  def nudge_char(code, shift) do
    cond do
      #only shift letters of alphabet either caps or regular (filter)
      #handle upper letters
      is_upper(code) ->
        #handle wraparound when shift extends beyond 26th code
        limit = ?Z
        wrap(code, shift,limit)

      #handle lower letters
      is_lower(code) ->
        #handle wraparound when shift extends beyond 26th code
        limit = ?z
        wrap(code, shift,limit)
      #if punctuation or number or space then leave it as is
      true -> code
    end

  end

  def is_upper(code) do
    cond do
      code >= ?A && code <= ?Z -> true
      true -> false
    end
  end

  def is_lower(code) do
    cond do
         code >= ?a && code <= ?z -> true
      true -> false
    end
  end

  def wrap(code, shift,limit) do
    cond do
      code + shift > limit -> code + shift - 26
      true -> code + shift
    end
  end
end