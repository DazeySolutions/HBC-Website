var feed = new Instafeed({
  get:'user',
  userId: 1678475616,
  accessToken: '1678475616.467ede5.3507c96e1879422ba2bbef4eddc38025',
  limit: 9,
  template: '<a href="{{link}}" target="_blank"><img src="{{image}}" /><div class="likes">&hearts; {{likes}}</div></a>'
});
feed.run();

