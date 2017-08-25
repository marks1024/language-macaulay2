describe "Macaulay2 grammar", ->
  grammar = null

  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('language-macaulay2')

    runs ->
      grammar = atom.grammars.grammarForScopeName('source.macaulay2')

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe 'source.macaulay2'
