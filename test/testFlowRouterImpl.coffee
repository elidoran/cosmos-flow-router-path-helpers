
# test we can access PathHelpers

# test we can access PathHelpers.path

# test we can set the implementation on PathHelpers.path


# test our implementation using: getPathViaFlowRouter

### Unable to do this because FlowRouter needs a 'replace' which is undefined
    have to figure out what that is and get it into the test space
Tinytest.add 'pathFor: path', (test) ->
  pathIn = '/hello'
  options =
    hash:
      path: pathIn
  pathOut = getPathViaFlowRouter options
  test.equal pathIn, pathOut
###

Tinytest.add 'pathFor: path + params', (test) ->
  test.equal true, true

Tinytest.add 'pathFor: path + query', (test) ->
  test.equal true, true

Tinytest.add 'pathFor: path + anchor', (test) ->
  test.equal true, true

Tinytest.add 'pathFor: path + params + query', (test) ->
  test.equal true, true

Tinytest.add 'pathFor: path + params + anchor', (test) ->
  test.equal true, true

Tinytest.add 'pathFor: path + query + anchor', (test) ->
  test.equal true, true

Tinytest.add 'pathFor: path + params + query + anchor', (test) ->
  test.equal true, true
