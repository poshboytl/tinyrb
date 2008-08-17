# String stuff
a = "ohaie"[0,2]
a += "aie".to_s
a += 1.to_s
a += true.to_s
a += :that.to_s

# Conditional
if a
  puts "a is a " + a.class.name
  puts "a = " + a
end
i = 0
while i < 3
  i += 1
end

# stdio
puts "prog name: " + ARGV.last
puts "type a key:"
puts "you typed: " + STDIN.read(1)

# method
def method!(x, y="cool"); x + y end
puts "method! returned: " + method!("var")

# class
class Poop
  def initialize(answer)
    @smell = "smell"
    @@answer = answer
  end
  def do_you_smell?
    "do you " + @smell + "? "
  end
  def answer(excl)
    @@answer + excl
  end
end
p = Poop.new("yes")
puts p.do_you_smell? + p.answer("!!!")

# Send opcode to the VM from Ruby
VM.run "boot.rb", [
  [1, 19, "yeah!"],
  [1, 46, :puts, 1, nil, 0, nil]
]

# proc
p = Proc.new { |hi| hi + " from proc" }
puts p.call("hi")

# exception
raise "This is not so exceptional"
