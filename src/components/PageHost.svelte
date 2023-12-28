<script lang="ts">
    import pallete from "$lib/colors";

    
</script>


<style lang="scss">

    #root-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        @media (max-width: 768px) {
            min-height: calc(100vh - 50px);
            max-width: calc(100vw - 50px);
            padding: 25px;

        }

        @media (min-width: 768px) {
            min-height: calc(100vh - 100px);
            max-height: calc(100vh - 100px);
            width: calc(100vw - 100px);
            padding: 50px;

        }
        position: absolute;
    }

    .surface {
        
        flex: 1;
        display: flex;
        
        justify-content: center;
        // align-items: center;
        border-radius: 50px;
        gap: 50px;
        
        @media (max-width: 768px) {
            flex-direction: column;
            grid-template-columns: 1fr;
            width: calc(100% - 50px);
            padding: 25px;

        }

        @media (min-width: 768px) {
            flex-direction: row;
            grid-template-columns: 0.6fr 0.4fr;
            width: calc(100% - 100px);
            padding: 50px;
        }

    }
    


</style>

<div id="root-container" style="background-color: {pallete.colors.crust.hex};">
    <div 
        class="surface"
        style={
        `
            background-color: ${pallete.colors.mantle.hex};
        `
        }
    >
        <slot></slot>
    </div>
</div>