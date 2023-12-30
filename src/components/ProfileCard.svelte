<script lang="ts">
    import pallete from "$lib/colors";
	import SocialItem from "./parts/SocialItem.svelte";
</script>


<style lang="scss">
    .surface {
        display: flex;
        // padding: 50px;
        justify-content: center;
        // align-items: center;
        border-radius: 50px;
        @media (max-width: 768px) {
            flex: 1;
            min-width: calc(100% - 50px);
            order: 1;

        }
        @media (min-width: 768px) {
            flex: 0.35;
            min-height: calc(100% - 100px);
            order: 2;

        }
    }
    .surface > * {
        flex: 1;
        max-width: 100%;
        word-wrap: break-word;
    }

    #profilecard-root {
        flex: 1;
        min-height: 100%;
        background: center 150px / 100% auto linear-gradient(180deg, #FFABAC 0%, #FF2BA7 99.94%) no-repeat,
        center -180px / 120% auto url("/banner.png") no-repeat;
        border-radius: 50px;

    }
    #rest {
        display: flex;
        flex-direction: column;
        flex: 1;
        height: 100%;
        margin-top: 75px;
        align-items: center;
    }

    #avatar {
        width: 130px;
        height: 130px;
        border-radius: 115px;
        background: center / contain linear-gradient(180deg, #FFABAC 0%, #FF2BA7 1000%);
        display: flex;
        justify-content: center;
        align-items: center;
    }
    #avatar-inner {
        width: 100px;
        height: 100px;
        background: center / contain no-repeat url("/avatar.png");
        border-radius: 100px;
    }
    #name {
        font-size: 30px;
        font-weight: bold;
        margin-top: 7px;
    }
    #socials {
        display: flex;
        flex-direction: row;
        flex-wrap: wrap;
        margin-top: 20px;
        gap: 10px;
        max-width: 100%;
        padding: 0 20px;
        padding-bottom: 20px;
        justify-content: center;
    }
</style>

<div class="surface" style="background-color:{pallete.colors.surface0.hex}">
    <div id="profilecard-root">
        <div id="rest">
            <div id="avatar">
                <div id="avatar-inner"></div>
            </div>
            <span id="name" style="color: rgba(76, 79, 105, 1)"> aenri </span>
            <div id="socials">
                <SocialItem
                    icon="/discord.svg"
                    text="@aenri.rs"
                    link="https://discord.gg/2YzYzq6"
                />
                <SocialItem
                    icon="/github.svg"
                    text="aenriii"
                    link="https://github.com/aenriii"
                />
                <SocialItem
                    icon="/twitter.svg"
                    text="@aenri_"
                    link="https://twitter.com/aenri_"
                />
                <SocialItem
                    icon="/telegram.svg"
                    text="@aenriii"
                    link="https://t.me/aenriii"
                />
                <SocialItem
                    icon="/wetdry.world.png"
                    text="@aenri@wetdry.world"
                    link="https://wetdry.world/@aenri"
                />
                <SocialItem
                    icon="/bluesky.svg"
                    text="@aenri.loveh.art"
                    link="https://bsky.app/profile/aenri.loveh.art"
                />
                <SocialItem
                icon="/spotify.svg"
                text="aenri"
                link="https://open.spotify.com/user/31ibkkkzf6xi36rjarcpfkyemp2y"
            />
                <SocialItem
                    icon="/lastfm.svg"
                    text="aenri_"
                    link="https://www.last.fm/user/aenri_"
                />
                <SocialItem
                    icon="/keyoxide.png"
                    text="Keyoxide"
                    link="https://keyoxide.org/aspe%3Akeyoxide.org%3AD5KJMYPK5OCZMGJB3J37GBIBAI"
                />

            </div>
        </div>
    </div>
</div>