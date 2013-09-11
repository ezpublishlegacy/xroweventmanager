{* DO NOT EDIT THIS FILE! Use an override template instead. *}
{if is_set($attribute_base)|not}{def $attribute_base='ContentObjectAttribute'}{/if}
{def $date=currentdate()
	 $syear=2007
	 $eyear=sum($date|datetime(custom,"%Y"),10)
	 $start_timestamp=first_set( $attribute.content.start_date, $date )
	 $end_timestamp=first_set( $attribute.content.end_date, sum($date,3600) )
	 $max_participants=first_set( $attribute.content.max_participants, 0 )
	 $status=first_set( $attribute.content.status, 1 )
	 $status_array=$attribute.content.status_array
	 $person_array=$attribute.content.persons
	 $participants_array=$attribute.content.participants
	 $comment=$attribute.content.comment
}
{if $start_timestamp|eq(0)}
    {def $start_year=""
    	 $start_month=""
    	 $start_day=""
    	 $start_hour=""
    	 $start_min=""
    }
{else}
    {def $start_year=$start_timestamp|datetime(custom,"%Y")
    	 $start_month=$start_timestamp|datetime(custom,"%m")
    	 $start_day=$start_timestamp|datetime(custom,"%d")
    	 $start_hour=$start_timestamp|datetime(custom,"%H")
    	 $start_min=$start_timestamp|datetime(custom,"%i")
    }
{/if}
{if $end_timestamp|eq(0)}
    {def $end_year=""
    	 $end_month=""
    	 $end_day=""
    	 $end_hour=""
    	 $end_min=""
    }
{else}
    {def $end_year=$end_timestamp|datetime(custom,"%Y")
    	 $end_month=$end_timestamp|datetime(custom,"%m")
    	 $end_day=$end_timestamp|datetime(custom,"%d")
    	 $end_hour=$end_timestamp|datetime(custom,"%H")
    	 $end_min=$end_timestamp|datetime(custom,"%i")
    }
{/if}
<p><strong>{"Start"|i18n("extension/xroweventmanager")}:</strong></p>
<div class="block">
    <div class="element">
        <label>{"Year"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_start_year_{$attribute.id}" title="{"Please enter the year"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for $syear to $eyear as $i}
             <option value="{$i}"{if eq($start_year,$i)} selected="selected"{/if}>{$i}</option>
        {/for}
        </select>
    </div>

    <div class="element">
        <label>{"Month"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_start_month_{$attribute.id}" title="{"Please enter the month"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for 1 to 12 as $i}
            <option value="{$i}"{if eq($start_month,$i)} selected="selected"{/if} >{$i}</option>
        {/for}
        </select>
    </div>

    <div class="element">
        <label>{"Day"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_start_day_{$attribute.id}" title="{"Please enter the day"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for 1 to 31 as $i}
            <option value="{$i}"{if eq($start_day,$i)} selected="selected"{/if}>{$i}</option>
        {/for}
        </select>
    </div>

    <div class="element">
        <label>{"Hour"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_start_hour_{$attribute.id}" title="{"Please enter the hour"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for 0 to 23 as $i}
            <option value="{$i}"{if ne($start_hour,'')}{if eq($start_hour,$i)} selected="selected"{/if}{/if}>{$i}</option>
        {/for}
        </select>
    </div>

    <div class="element">
        <label>{"Minute"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_start_minute_{$attribute.id}" title="{"Please enter the minute"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for 0 to 59 as $i}
            <option value="{$i}"{if ne($start_min,'')}{if eq($start_min,$i)} selected="selected"{/if}{/if}>{$i}</option>
        {/for}
        </select>
    </div>
</div>
<div class="break"></div>
<p><strong>{"End"|i18n("extension/xroweventmanager")}:</strong></p>
<div class="block">
    <div class="element">
        <label>{"Year"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_end_year_{$attribute.id}" title="{"Please enter the  year"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for $syear to $eyear as $i}
             <option value="{$i}"{if eq($end_year,$i)} selected="selected"{/if}>{$i}</option>
        {/for}
        </select>
    </div>

    <div class="element">
        <label>{"Month"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_end_month_{$attribute.id}" title="{"Please enter the month"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for 1 to 12 as $i}
            <option value="{$i}"{if eq($end_month,$i)} selected="selected"{/if} >{$i}</option>
        {/for}
        </select>
    </div>

    <div class="element">
        <label>{"Day"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_end_day_{$attribute.id}" title="{"Please enter the day"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for 1 to 31 as $i}
            <option value="{$i}"{if eq($end_day,$i)} selected="selected"{/if}>{$i}</option>
        {/for}
        </select>
    </div>

    <div class="element">
        <label>{"Hour"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_end_hour_{$attribute.id}" title="{"Please enter the hour"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for 0 to 23 as $i}
            <option value="{$i}"{if ne($end_hour,'')}{if eq($end_hour,$i)} selected="selected"{/if}{/if}>{$i}</option>
        {/for}
        </select>
    </div>

    <div class="element">
        <label>{"Minute"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_end_minute_{$attribute.id}" title="{"Please enter the minute"|i18n("extension/xroweventmanager")}">
            <option value=""></option>
        {for 0 to 59 as $i}
            <option value="{$i}"{if ne($end_min,'')}{if eq($end_min,$i)} selected="selected"{/if}{/if}>{$i}</option>
        {/for}
        </select>
    </div>
</div>
<div class="break"></div>


<div class="block">
    <div class="element">
        <label>{"Max. participants"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>

        <input id="ezcoa-{if ne( $attribute_base, 'ContentObjectAttribute' )}{$attribute_base}-{/if}{$attribute.contentclassattribute_id}_{$attribute.contentclass_attribute_identifier}" class="box ezcc-{$attribute.object.content_class.identifier} ezcca-{$attribute.object.content_class.identifier}_{$attribute.contentclass_attribute_identifier}" type="text" name="{$attribute_base}_xrowevent_max_participants_{$attribute.id}" size="10" value="{$max_participants|wash}" />

    </div>

    <div class="element">
        <label>{"Status"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        <select name="{$attribute_base}_xrowevent_status_{$attribute.id}" title="{"Please enter the max. participants."|i18n("extension/xroweventmanager")}">
        {foreach $status_array as $key => $status_name}
            {if and($key|eq(1),$max_participants|gt(0),$participants_array|count|ge($max_participants))}
                <option value="{$key}" disabled="disabled">{$status|wash}</option>
            {else}
                <option value="{$key}"{if eq($status,$key)} selected="selected"{/if}>{$status_name|wash}</option>
            {/if}
        {/foreach}
        </select>
    </div>
</div>
<div class="break"></div>
<div class="block">
    <div class="element">
        <label><input type="checkbox" value="1" name="{$attribute_base}_xrowevent_comment_{$attribute.id}" {if $comment}checked="checked" {/if}/>
        {"Allow comments from participants"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
    </div>
</div>
<div class="block">
    <div class="element">
        <label>{"Persons"|i18n("extension/xroweventmanager")}</label><div class="labelbreak"></div>
        {if $person_array|count|gt(0)}
            {foreach $person_array as $key => $person }
                <input type="checkbox" name="xrowevent_person_array_{$attribute.id}[{$person.user_id}]" value="{$person.user_id}" />
                {$person.user_object.name|wash}<br/>
            {/foreach}
        {else}
            <p>{"No persons added yet."|i18n("extension/xroweventmanager")}</p>
        {/if}
    </div>
</div>

<div class="break"></div>
<div class="buttonblock">
{if $person_array|count|gt(0)}
    <input class="button" type="submit" name="CustomActionButton[{$attribute.id}_remove_persons]" value="{'Remove selected'|i18n( 'extension/xroweventmanager' )}" />
{else}
    <input class="button-disabled" type="submit" name="CustomActionButton[{$attribute.id}_remove_persons]" value="{'Remove selected'|i18n( 'extension/xroweventmanager' )}" disabled="disabled" />
{/if}

&nbsp;<input class="button" type="submit" name="CustomActionButton[{$attribute.id}_add_persons]" value="{'Add persons'|i18n( 'extension/xroweventmanager' )}" />

{if $attribute.content.person_user_exists|not}
&nbsp;<input class="button" type="submit" name="CustomActionButton[{$attribute.id}_add_me]" value="{'Add me'|i18n( 'extension/xroweventmanager' )}" />
{/if}

</div>