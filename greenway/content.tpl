<!-- CONTENT START -->

{if $searchresult_tooShort}
    <h2 class="serendipity_date">{$CONST.QUICKSEARCH}</h2>
	<div class="serendipity_search serendipity_search_tooshort">{$content_message}</div>
{elseif $searchresult_error}
    <h2 class="serendipity_date">{$CONST.QUICKSEARCH}</h2>
	<div class="serendipity_search serendipity_search_error">{$content_message}</div>
{elseif $searchresult_noEntries}
    <h2 class="serendipity_date">{$CONST.QUICKSEARCH}</h2>
	<div class="serendipity_search serendipity_search_noentries">{$content_message}</div>
{elseif $searchresult_results}
    <h2 class="serendipity_date">{$CONST.QUICKSEARCH}</h2>
	<div class="serendipity_search serendipity_search_results">{$content_message}</div>
{else}
	<div class="serendipity_content_message">{$content_message}</div>
{/if}

{$ENTRIES}
{$ARCHIVES}

<!-- CONTENT END -->
