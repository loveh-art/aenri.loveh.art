<script lang="ts">
    import palette from "$lib/colors";
	import { get, writable, type Readable, type Writable } from "svelte/store";
    import { browser } from '$app/environment';
	import LyricsContainer from "./LyricsContainer.svelte";


    export let sourceImageUrl: string;

    export let songName: string;
    export let artistName: string;
    export let albumName: string;

    export let progress: number; // 0-1
    export let maxShownLines = 7; // if this is not an odd number i die in real life
    export let lyrics: Writable<string[]> = writable([]);


    let percent = (n: number) => `${n * 100}%`;
    let lyr: string[] = [];




    //! All of this will be dynamic in the future, for now im just testing the elements
</script>

<style lang="scss">
    #spotify-container {
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        width: 100%;
        max-width: 400px;
        height: 100%;
        max-height: min-content;
        border-radius: 25px 25px 50px 50px;
        gap: 50px;
        background: #ffffff40;
        color: var(--fg);
        padding: 15px;
    }
    .col {
        flex: 1;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        gap: 10px;
    }
    .row {
        flex: 1;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: center;
        gap: 10px;
    }
    #lyrics  {
        align-items: flex-start;
        font-weight: 600;
        font-size: 20px;
        gap: 10px;
        & * {
            margin: 0px;
        }
    }
    #progress-bar {
        width: 100%;
        min-height: 10px;
        background: #ffffff40;
        border-radius: 10px;
        align-items: flex-start;
        align-content: flex-start;
        gap: 0px;
    }
    #progress-bar-inner {
        min-height: 10px;
        height: 100%;
        background: var(--fg);
        border-radius: 10px;
        flex: unset;
        align-self: first baseline;
    }
    #text-data {
        gap: 0px;
        align-items: flex-start;
        & > *, & > * > * {
            margin: 0px;
        }
    }
    #song-name {
        font-size: 24px;
        font-weight: 700;
    }
    #artist-name {
        font-size: 16px;
        font-weight: 700;
    }
    #album-art, #album-art > img {
        width: 100px;
        height: 100px;
        border-radius: 20px;
        flex: unset;
    }

    #metadata {
        align-content: space-between;
        // align-items: flex-start;
        gap: 10px;
        width: 100%
    }
    #song-info {
        align-items: flex-start;
    }
    #root {
        width: 100%;
        height: 100%;
        max-height: min-content;
        gap: 10px;
    }

    
</style>

<div id="spotify-container" style="--fg:{palette.colors.text.hex};">
    <div id="root" class="col">
        <div id="metadata" class="row">
            <div id="album-art" class="col">
                <img src={sourceImageUrl} alt="Album Art"/>
            </div>
            <div id="song-info" class="col">
                <div id="text-data" class="col">
                    <div id="song-name" class="row">
                        <span>{songName}</span>
                    </div>
                    <div id="artist-name" class="row">
                        <span>{artistName} - {albumName}</span>
                    </div>

                </div>
                <div id="progress-bar" class="col">
                    <div id="progress-bar-inner" style="width: {percent(progress)}"></div>
                </div>
            </div>
        </div>
        <LyricsContainer />
    </div>
</div>