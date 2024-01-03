<script lang="ts">

    import pallete from "$lib/colors";
    
    export let icon: string = "";
    export let text: string = "";
    export let link: string = "";

</script>


<style lang="scss">
    #container {
        padding: 10px 15px;
        display: flex;
        align-items: center;
        justify-content: center;
        gap: 10px;
        border-radius: 50px;

        fill: var(--text-color);
        color: var(--text-color);

        font-size: 20px;        
        font-weight: bold;

    }
    img {
        max-height: 25px;
    }
    a {
        text-decoration: none;
    }
</style>

<a href={link} target="_blank" rel="noopener noreferrer">
    <div id="container" style="--text-color: {pallete.colors.text.hex}; background-color: {pallete.colors.surface0.hex}">
        <img src={icon} alt={text} />
        <span>{text}</span>
    </div>
</a>