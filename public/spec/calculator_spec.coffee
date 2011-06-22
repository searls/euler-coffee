describe 'Calculator', ->
  calculator=result=null
  beforeEach -> calculator = new Calculator
  
  describe '.sum', ->
    context 'a simple array', ->
      beforeEach -> result = calculator.sum [1,2,3,4]
      it 'sums them up', ->
        expect(result).toBe 10
      
    