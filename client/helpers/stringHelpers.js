Template.registerHelper('truncate', function(string, length) {
  var cleanString = _(string).stripTags();
  return _(cleanString).truncate(length);
});

Template.registerHelper('avatar_url', function(email, size) {
  return Gravatar.imageUrl(email, {
    'size': size,
    default: 'mm',
    secure:true,
  });
});
