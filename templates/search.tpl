{include file="inc/head.tpl"}
<h2 class="h3">Import from OpenStreetMap</h2>
<form class="py1">
    <label for="query">Address or name</label>
    <input type="text" name="query" id="query" value="{if $query}{$query}{/if}" />
    <input type="submit" value="Search" />
</form>
<ul>
    {$i = 0}
    {foreach $results as $result}
        {if $result.osm_type == 'node' || $result.osm_type == 'way'}
            {$i = $i + 1}
            <li><a href="./{$result.osm_type}/{$result.osm_id}">{$result.display_name}</a></li>
        {/if}
    {/foreach}
</ul>
{if $query and $i == 0}
    <div class="brdr--dark-gray p1 fnt--red">No results</div>
{/if}
{include file="inc/footer.tpl"}
