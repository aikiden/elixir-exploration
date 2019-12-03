defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    dna_string = to_string(dna)
    cond do
      #handle when there is no value entered:
      String.length(dna_string)==0 ->
      IO.puts "no input available. please supply a character or string value representing the dna that you want transcribed."
      dna_string
      #handle when there is only a single nucleotide entered:
      String.length(dna_string) == 1 ->
        transcribe(dna_string)
      #handle when a string of nucleotides is entered:
      String.length(dna_string) > 1 ->
        #if more than 1 then split into a list of chars and do once through for each char:
        tides = String.graphemes(dna_string)
        rna = Enum.map(tides,fn(s) -> [] ++ transcribe(s) end )
        List.to_charlist(rna)
    end
  end
  def transcribe(nucleotide) do
    case nucleotide do
      "G" -> 'C'
      "C" -> 'G'
      "T" -> 'A'
      "A"-> 'U'
    end
    #IO.puts(nucleotide)
  end
end
