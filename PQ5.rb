use_bpm = 150
live_loop :melody do
  1.times do
    play chord(:e, :minor)
    sleep 0.125
  end
  6.times do
    play chord(:e, :minor)
    sleep 0.25
  end
  4.times do
    play chord(:c, :major)
    sleep 0.25
  end
  1.times do
    play chord(:d, :major)
    sleep 0.5
  end
  4.times do
    play chord(:e, :minor)
    sleep 0.25
  end
  4.times do
    play chord(:c, :major)
    sleep 0.25
  end
  1.times do
    play chord(:d, :major)
    sleep 0.5
  end
  sleep 0.5
end
live_loop :drum_beat do
  tick
  sample :drum_heavy_kick, amp: (ring 0.5,0).look
  sample :drum_snare_hard, amp:(ring 0.5, 0, 0.5, 0).look
  sleep 0.25
end
live_loop :vocal do
  sample :guit_e_slide, rate: 0.5
  sleep 2
end
sleep 3
live_loop :notes do
  sample :piano, rate: 0.5
  sleep 1
end


