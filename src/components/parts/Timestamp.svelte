<script lang="ts">
    import { Tooltip } from "@svelte-plugins/tooltips";
    import { DateTime } from 'luxon';
    
    export let date: string;
    export let content: string = "%%";
</script>

<style lang="scss">
    .timestamp {
        background-color:  rgba(255,255,255,0.2);
        padding: 2px;
        border-radius: 5px;
        display: inline;
    }
</style>
<Tooltip content={date} align="center">
    <span class="timestamp" >
        {
            content.replace("%%", (DateTime.fromJSDate(new Date(date)).toRelative({
                
            }) as string).replace(/( ago)|(in )/, ''))
        }
    </span>
</Tooltip>
