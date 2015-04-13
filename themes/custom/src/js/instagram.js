var feed = new Instafeed({
  get:'user',
  userId: 1678475616,
  accessToken: '1678475616.467ede5.3507c96e1879422ba2bbef4eddc38025',
  limit: 12,
  template: '<div class="col-xs-12 col-sm-6 col-md-4"><a href="{{link}}" target="_blank"><div style="width:100%; height: 100%; position: relative;"><img src="{{image}}" /><div class="likes">&hearts; {{likes}}</div></div></a></div>'
});
feed.run();

