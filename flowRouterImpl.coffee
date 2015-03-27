
@getPathViaFlowRouter = (options) ->
  # FlowRouter doesn't support the anchor name (hash)
  path = FlowRouter.path options.path, options?.params, options?.query
  #So, let's add it ourselves
  path += '#' + options.anchor if options?.anchor?
  path

if FlowRouter?

  if PathHelpers?
    PathHelpers.path = getPathViaFlowRouter

  else
    throw new Error 'PathHelpers is not available to configure its path function'

else
  throw new Error 'FlowRouter is not available for use rendering a path'
