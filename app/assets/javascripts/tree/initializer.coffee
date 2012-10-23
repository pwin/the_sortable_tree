$ ->    
  console.time('tree build')
  # Select all trees JSON data and build it
  for data_block in $ '.tree_json_data'
    data_block = $ data_block
    tree       = JSON.parse data_block.html()
    
    console.log 'tree length:', tree.length

    tree_html  = render_tree(tree)

    # Append tree html after JSON data block
    data_block.after "<ol class='tree'>#{tree_html}</ol>"

  console.timeEnd('tree build')