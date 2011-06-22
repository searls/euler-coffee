describe 'Project Euler Answers', ->
  describe '#1 - multiples of 3 and 5 below 1000', ->
    it 'is 233168', ->
      expect((new Calculator).sum (new Multiples).of_all [3,5], below: 1000).toBe 233168
        
  describe '#2 even fibonacci < 4M', ->
    it 'is 4613732', ->
      expect((new Calculator).sum (new Fibonacci).even until: 4000000).toBe 4613732