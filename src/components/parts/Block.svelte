<script lang="ts">
    import palette from "$lib/colors";

    export let bg = palette.colors.surface1.hex;

    export let style = "";
</script>

<style lang="scss">
    // this is a block, a small container with some padding and a border radius that can be used to wrap other elements. it will not be the main element of a page, but rather a child of one.
    .block {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        gap: 15px;
        padding: 20px;
        border-radius: 30px;

        background: var(--bg);
        color: var(--fg);
        fill: var(--fg);

        font-size: 20px;
        max-width: calc(100% - 80px);
        text-align: center;
    }

    span {
        margin: 0px;
    }

</style>

<div class="block" style="--bg:{bg};--fg:{palette.colors.text.hex};{style}">
    <slot>

    </slot>
</div>