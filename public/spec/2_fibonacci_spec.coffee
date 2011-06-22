describe 'Fibonacci', ->
  fibonacci = result = null
  beforeEach -> fibonacci = new Fibonacci  
  describe '#all', ->
    context 'up to 89', ->
      beforeEach -> result = fibonacci.all until: 89
      
      it 'should come to 1, 2, 3, 5, 8, 13, 21, 34, 55, 89', ->
        expect(result).toEqual [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
      
      
  describe '#even', ->
    context 'up to 89', ->
      beforeEach -> result = fibonacci.even until: 89
      
      it 'should come to 2, 8, 34', ->
        expect(result).toEqual [2,8,34]