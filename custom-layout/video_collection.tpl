<div class="row">
	<div class="medium-12 columns video-module">
		<div class="main-tab-content">
			<div class="medium-3 columns">
			<ul class="tabs main-tab" role="tablist">
			{% for item in items %} 
				<li class="tab-title"><a href="#tabs-{{item.itemId}}"><span class="mcomplete" id="vid-{{item.itemId}}"><em class="fa fa-check"></em></span> {{item.['Tab Label']}}</a></li>	
			{%endfor%} 
			
			</ul>
			
			</div>
			<div class="medium-9 columns">
			<div class="tabs-content">
			{% for item in items %} 
				<section class="content" id="tabs-{{item.itemId}}">

					<div class="video-area">
						{{item.['Video Code']}}
					</div>
					<div class="row hmrow">
						<div class="medium-4 columns homework">
							
							<h4>Home Work</h4>
							<div class="hwcontent">
							{{item.Homework}}
							</div>
						</div>
						<div class="medium-8 columns vdesc">{{item.Information}}</div>
					</div>
					
					<div class="row">
						<div class="comment-section">

							<h4>Comments</h4>
                               <p>If you have comments or questions on this particular Module {{params.customname}} please feel free to comment below. </p>
                        <p>If you have general comments and questions please <a target="_blank" href="https://www.facebook.com/groups/393389657734702/">Join Us in our WOW Members Private Facebook Group</a> for discussion among the other members and myself.
                        </p>
							<div class="medium-12 columns listcomments">
								{{item.description}}
							</div>
							
							<h4>Leave a Comment</h4>
							<div class="comment-formsection">
							<form name="catratingform39245" onsubmit="return checkWholeForm39245(this)" method="post" action="/RatingProcess.aspx?OID={module_oid}&amp;OTYPE={module_otype}&amp;PageID={module_pageaddress}">
							<div class="row">	
								<div class="medium-6 columns">
									<input class="cat_textbox_small" name="FullName" id="RFullName" placeholder="Full Name" maxlength="255" type="text" />
								</div>
								<div class="medium-6 columns">
									<input class="cat_textbox_small" name="EmailAddress" id="REmailAddress" placeholder="Email Address" maxlength="255" type="text" />
								</div>
							</div>
							<div class="row">	
								<div class="medium-12 columns">
									<textarea class="comment" name="Feedback" id="Feedback" placeholder="Your Comment" cols="10" rows="4"></textarea>
								</div>
							</div>
							<div class="row">	
								<div class="medium-12 columns">
									 {module_recaptcha version="2"}
								</div>
							</div>
							<div class="row">	
								<div class="medium-12 columns">
									 <input class="cat_button" value="Submit" type="submit" />
								</div>
							</div>
   
							 <script type="text/javascript">
							//<![CDATA[
							function checkWholeForm39245(theForm){var why = "";
							if (theForm.EmailAddress) if (theForm.EmailAddress.value.length > 0) why += checkEmail(theForm.EmailAddress.value);
							if (theForm['g-recaptcha-response']) why += reCaptchaV2IsInvalid(theForm, "Please prove you're not a robot");
							if (why != ""){alert(why);return false;}theForm.submit();return false;}
							//]]>
							</script>
							</form>
							</div>
						</div>
					</div>

				 </section>
			{%endfor%} 
			</div>
		</div>
		</div>

	</div>
</div>


