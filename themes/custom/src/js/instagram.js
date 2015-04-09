var feed = new Instafeed({
  get:'user',
  userId: 234474976,
  accessToken: '234474976.467ede5.d1c61f1254ee4761ad9377e7683e358f',
  limit: 9,
  template: '<a href="{{link}}" target="_blank"><img src="{{image}}" /><div class="likes">&hearts; {{likes}}</div></a>'
});
feed.run();
/*
<div id="instafeed"></div>
#instafeed a {
  padding:5px 5px 1px 5px;
  margin:10px;
  border:1px solid #e1e1e1;
  display:inline-block;
  border-radius: 4px;
  position:relative;
}

#instafeed .likes {
  background:rgba(222,89,135,0.8);
  font-family:sans-serif;
  font-size:1em;
  position:absolute;
  color:#ffffff;
  right:5px;
  top:5px;
  left:5px;
  opacity:0;
  text-align:center;
  line-height:150px;
  text-shadow:0 1px rgba(0,0,0,0.5);
  -webkit-font-smoothing:antialiased;
  -webkit-transition: opacity 100ms ease;
	-moz-transition: opacity 100ms ease;
	-o-transition: opacity 100ms ease;
	-ms-transition: opacity 100ms ease;
	transition: opacity 100ms ease;
}

#instafeed a:hover .likes {
  opacity:1;
}
*/