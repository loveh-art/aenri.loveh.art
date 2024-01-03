<style lang="scss">

    // center the content on the page

    #root-container {
        display: flex;
        flex-direction: row;
        gap: 50px;
        align-items: center;
        justify-content: center;
        @media (max-width: 768px) {
            min-height: calc(100vh - 50px);
            max-width: calc(100vw - 50px);
            padding: 25px;

        }

        @media (min-width: 768px) {
            min-height: calc(100vh - 100px);
            max-width: calc(100vw - 100px);
            padding: 50px;

        }
        position: absolute;
    }

</style>

<div id="root-container">
    <slot></slot>
</div>