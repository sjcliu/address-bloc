def pitch_class(note)
  pitch = {C: 0, D: 2, E: 4, F: 5, G: 7, A: 9, B: 11}
  p pitch[note]

  pitch.each_key do |pitch, value|
    if note.index("#")
      value += 1
      p "#{pitch}#"
    end
  end
end


pitch_class(:D"#")
