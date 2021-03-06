<div id="serendipityCommentFormC" class="serendipityCommentForm">
    <div id="serendipity_replyform_0"></div>
    <a id="serendipity_CommentForm"></a>
    <form id="serendipity_comment" action="{$commentform_action}#feedback" method="post">
    <div><input type="hidden" name="serendipity[entry_id]" value="{$commentform_id}" /></div>
    <dl>
    	<dt class="serendipity_commentsLabel"><label for="serendipity_commentform_name">{$CONST.NAME}</label></dt>
    		<dd class="serendipity_commentsValue"><input class="frm" type="text" id="serendipity_commentform_name" name="serendipity[name]" value="{$commentform_name}" size="30" /></dd>
    	<dt class="serendipity_commentsLabel"><label for="serendipity_commentform_email">{$CONST.EMAIL}</label></dt>
    		<dd class="serendipity_commentsValue"><input class="frm" type="text" id="serendipity_commentform_email" name="serendipity[email]" value="{$commentform_email}" size="30" /></dd>
    	<dt class="serendipity_commentsLabel"><label for="serendipity_commentform_url">{$CONST.HOMEPAGE}</label></dt>
    		<dd class="serendipity_commentsValue"><input class="frm" type="text" id="serendipity_commentform_url" name="serendipity[url]" value="{$commentform_url}" size="30" /></dd>
    	<dt class="serendipity_commentsLabel"><label for="serendipity_replyTo">{$CONST.IN_REPLY_TO}</label></dt>
    		<dd class="serendipity_commentsValue">{$commentform_replyTo}</dd>
    	<dt class="serendipity_commentsLabel"><label for="serendipity_commentform_comment">{$CONST.COMMENT}</label></dt>
    		<dd class="serendipity_commentsValue"><textarea class="frm" rows="10" cols="40" id="serendipity_commentform_comment" name="serendipity[comment]">{$commentform_data}</textarea><br />
    		{serendipity_hookPlugin hook="frontend_comment" data=$commentform_entry}</dd>
    		
    	{if $is_commentform_showToolbar}
    	<dt>&#160;</dt>
    		<dd class="serendipity_commentsLabel">
    			<input id="checkbox_remember" type="checkbox" name="serendipity[remember]" {$commentform_remember} />&#160;<label for="checkbox_remember">{$CONST.REMEMBER_INFO}</label>
    			{if $is_allowSubscriptions}
    			<br />
    			<input id="checkbox_subscribe" type="checkbox" name="serendipity[subscribe]" {$commentform_subscribe} />&#160;<label for="checkbox_subscribe">{$CONST.SUBSCRIBE_TO_THIS_ENTRY}</label>
    			{/if}
    		</dd>
    	{/if}
    	
    	{if $is_moderate_comments}
    	<dt class="serendipity_commentsValue serendipity_msg_important">{$CONST.COMMENTS_WILL_BE_MODERATED}</dt>
    		<dd>&#160;</dd>
    	{/if}
    <dt>&#160;</dt><dd class="serendipity_commentsLabel">
    <input type="submit" name="serendipity[submit]" value="{$CONST.SUBMIT_COMMENT}" />
    <input type="submit" id="serendipity_preview" name="serendipity[preview]" value="{$CONST.PREVIEW}" /></dd>
    </dl>
    </form>
</div>