Template.appLayout.rendered = ->
  $('.sidebar-toggle').each ->
    group = $(this)
    $(this).find('.btn').click (e) ->
      group.find('.btn.active').removeClass 'active'
      $(this).addClass 'active'
      e.preventDefault()
      return
    return
  $('.sidebar-toggle').click (e) ->
    e.preventDefault()
    #Enable sidebar push menu
    $('body').toggleClass 'sidebar-collapse'
    $('body').toggleClass 'sidebar-open'
    return
  $('.content-wrapper').click ->
    #Enable hide menu when clicking on the content-wrapper on small screens
    if $(window).width() <= 767 and $('body').hasClass('sidebar-open')
      $('body').removeClass 'sidebar-open'
    return
  $('li a', $('.sidebar')).click (e) ->
    #Get the clicked link and the next element
    $this = $(this)
    checkElement = $this.next()
    #Check if the next element is a menu and is visible
    if checkElement.is('.treeview-menu') and checkElement.is(':visible')
      #Close the menu
      checkElement.slideUp 'normal', ->
        checkElement.removeClass 'menu-open'
        return
      checkElement.parent('li').removeClass 'active'
    else if checkElement.is('.treeview-menu') and !checkElement.is(':visible')
      #Get the parent menu
      parent = $this.parents('ul').first()
      #Close all open menus within the parent
      ul = parent.find('ul:visible').slideUp('normal')
      #Remove the menu-open class from the parent
      ul.removeClass 'menu-open'
      #Get the parent li
      parent_li = $this.parent('li')
      #Open the target menu and add the menu-open class
      checkElement.slideDown 'normal', ->
        #Add the class active to the parent li
        checkElement.addClass 'menu-open'
        parent.find('li.active').removeClass 'active'
        parent_li.addClass 'active'
        return
    #if this isn't a link, prevent the page from being redirected
    if checkElement.is('.treeview-menu')
      e.preventDefault()
    return
  return
