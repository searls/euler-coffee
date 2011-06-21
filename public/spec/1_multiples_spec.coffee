describe 'Multiples', ->
  multiples = result = null
  beforeEach -> multiples = new Multiples
  describe "#of", ->
    context '3 below 10', ->
      beforeEach -> result = multiples.of 3, below: 10
      it 'is 3,6,9', ->
        expect(result).toEqual [3,6,9]

    context '5 below 10', ->
      beforeEach -> result = multiples.of 5, below: 10
      it 'is 5', ->
        expect(result).toEqual [5]

  describe '#of_all', ->
    context '3 and 5 below 10', ->
      beforeEach -> result = multiples.of_all [3,5], below: 10
      it 'is 3,5,6,9', ->
        expect(result).toEqual [3,5,6,9]
      
  describe '#sum_of_all', ->
    context '3 and 5 below 10', ->
      beforeEach -> result = multiples.sum_of_all [3,5], below: 10
      it 'is 23', ->
        expect(result).toBe 23
      
    context '3 and 5 below 1000', ->
      beforeEach -> result = multiples.sum_of_all [3,5], below: 1000
      it 'is 233168', ->
        expect(result).toBe 233168