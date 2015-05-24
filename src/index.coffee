plusOneContent = [
  '+1'
  '+1.0'
  '<img class="emoji" title=":+1:" alt=":+1:" src="https://assets-cdn.github.com/images/icons/emoji/unicode/1f44d.png" height="20" width="20" align="absmiddle">'
]

simplifyPlusOnes = ->
  for comment in document.querySelectorAll('.timeline-comment-wrapper')
    commentContent = comment.querySelector(
      '.comment-body p, .email-fragment'
    ).innerHTML
    if commentContent.trim() in plusOneContent
      avatar = comment.querySelector('.timeline-comment-avatar')
      userLink = avatar.parentNode.getAttribute('href')
      userId = avatar.getAttribute('data-user')
      userAlt = avatar.getAttribute('alt')

      username = comment.querySelector('.author').innerHTML

      time = comment.querySelector('.timeline-comment-header-text .timestamp')
      id = time.getAttribute('href')[1...]
      timeLink = time.outerHTML

      comment.outerHTML = """
      <div class="discussion-item">
        <div class="discussion-item-header" id="#{id}">
          <span class="octicon octicon-person discussion-item-icon"></span>
          <img alt="#{userAlt}" class="avatar" data-user="#{userId}" height="16" src="https://avatars1.githubusercontent.com/u/#{userId}?v=3&amp;s=32" width="16">
          <a href="/#{username}"><span class="discussion-item-entity">#{username}</span></a> +1'd this
          #{timeLink}
        </div>
      </div>
      """
  return

simplifyPlusOnes()

timeout = null
document.addEventListener("DOMSubtreeModified", ->
  # GitHub loads some pages by injecting their content into the DOM to avoid
  # reloading the whole page. This detects those partial page-changes.
  if(timeout)
    clearTimeout(timeout)

  timeout = setTimeout(simplifyPlusOnes, 500)
, false)
