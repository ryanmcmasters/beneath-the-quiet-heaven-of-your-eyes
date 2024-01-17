#beneath the quiet heaven of your eyes

#for string quartet and three subwoofers

#R.McMASTERS

rM = [1,1.5,1.75,1.125,1.625,1.1875,2.25,2.625,1.6875,2.4375,1.78125,3.375,2.53125,3.65625,2.671875]
$g = 1
$l = 0
$f = 0

m = 60

live_loop :cello do
  s = rrand(4,16)
  play (hz_to_midi (200*rM[rrand_i($f,$l)]*$g)), attack: 2, sustain: s, release: 2, pan: -1, amp: 0.3
  sleep s+rrand(0,8)
end

live_loop :viola do
  s = rrand(4,16)
  play (hz_to_midi (400*rM[rrand_i($f,$l)]*$g)), attack: 2, sustain: s, release: 2, pan: -0.5, amp: 0.3
  sleep s+rrand(0,8)
end

live_loop :vln1 do
  s = rrand(4,16)
  play (hz_to_midi (800*rM[rrand_i($f,$l)]*$g)), attack: 2, sustain: s, release: 2, pan: 0.5, amp: 0.3
  sleep s+rrand(0,8)
end

live_loop :vln2 do
  s = rrand(4,16)
  play (hz_to_midi (800*rM[rrand_i($f,$l)]*$g)), attack: 2, sustain: s, release: 2, pan: 1, amp: 0.3
  sleep s+rrand(0,8)
end

live_loop :drone do
  play (hz_to_midi 50), attack: 2, sustain: 6000, release: 10
  sleep 6000
end

it = 0

(rM.size-1).times do
  sleep rM[it]*m
  $l = $l + 1
  it = it + 1
end

it = 0

(rM.size-1).times do
  sleep rM[it]*m
  $f = $f + 1
  it = it + 1
end