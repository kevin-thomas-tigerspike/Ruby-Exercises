def pitch_class note
  notes = {"C" => 0, "D" => 2, "E" => 4, "F" => 5, "G" => 7, "A" => 9, "B" => 11 }
  result = nil
  case
    when notes.key?(note)
      notes[note]
    when note.size == 2 && notes.key?(note[0]) && (note[1] == "#" || note[1] == "b")
      result = notes[note[0]]
      result += (note[1] == "#") ? 1 : -1
      result = (result < notes["C"]) ? result += notes["B"]+1 : (result > notes["B"]) ? result -= notes["B"]+1 : result
    else
      result
  end
end