class window.Multiples
  of: (base,config) =>
    ( num for num in [base..(config.below-1)] by base )

  of_all: (bases,config) =>
    multiples = for multiples, base of bases
      @of(base,config)
    _(_(_(multiples).flatten()).uniq()).sort()