<script lang="ts">

    import pallete from "$lib/colors";


    export let name: string = "NoName";
    export let description: string = "NoDescription";

    export let icon: "download" | "no-download" | "web" | "none" = "none";
    export let iconHref: string = "";

    export let status: "active" | "inactive" | "abandoned" | "none" = "none";
    
    export let githubLink: string = "";
    export let codebergLink: string = "";
    export let discordLink: string = "";

    const iconUris = {
        "download": "/download.svg",
        "no-download": "/no-download.svg",
        "web": "/web.svg",
        "none": ""
    };
    const linkIconUris = {
        "github": "/github.svg",
        "codeberg": "/codeberg.svg",
        "discord": "/discord.svg",
        "none": ""
    };
    const statusColors = {
        "active": pallete.colors.green.hex,
        "inactive": pallete.colors.yellow.hex,
        "abandoned": pallete.colors.red.hex,
        "none": pallete.colors.overlay0.hex
    }

    /*

        example:
        
        <ProjectCard
            name="Genesis"
            description="a feature-rich multiplatform discord client made in kotlin compose"
            icon="no-download"
            status="active"
            githubLink="https://github.com/uninit-org/genesis"
            codebergLink="https://codeberg.org/uninit/genesis"
            discordLink="https://discord.gg/YcN7Pq7aNQ"
        />
    
    */
</script>

<style lang="scss">

    a {
        display: contents;
    }

    h3 {
        margin: 0px;
        @media (max-width: 768px) {
            font-size: 24px;
        }
        @media (min-width: 768px) {
            font-size: 28px;
        }
    }

    p {
        margin: 0px;
        font-size: 20px;
    }
    .none {
        display: none;
    }

    .container {
        height: fit-content;
        display: flex;
        padding: 15px;
        flex-direction: column;
        justify-content: center;
        align-items: flex-start;
        gap: 10px;
        border-radius: 30px;

        background: var(--bg);
        color: var(--fg);
        fill: var(--fg);

        & .details-box {
            display: flex;
            padding: 6px;
            flex-direction: column;
            justify-content: center;
            align-items: flex-start;
            gap: 5px;
            align-self: stretch;

            & .name-box {
                display: flex;
                justify-content: space-between;
                align-items: center;
                align-self: stretch;
                gap: 10px;

                & .icons {
                    display: flex;
                    align-items: center;
                    gap: 10px;
                    & .icon {
                        max-width: 25px;
                        max-height: 25px;
                        background: center / contain no-repeat var(--icon-href);
                    }
                }
            }
        }
        & .status-box {
            display: flex;
            padding: 0px 5px 0px 10px;
            justify-content: space-between;
            align-items: center;
            align-self: stretch;

            & .icon {
                width: auto;
                min-width: 20px;
                height: 40px;
                

            }
            & .status {
                display: flex;
                align-items: center;
                gap: 5px;
                font-size: 25px;
                font-weight: bold;

                & .status-circle {
                    width: 25px;
                    height: 25px;
                    border-radius: 50%;
                    background: var(--status-color);
                }
            }
        }
    }
</style>

<div class="container" style="--bg:{pallete.colors.surface1.hex};--fg:{pallete.colors.text.hex};">
    <div class="details-box">
        <div class="name-box">
            <h3>{name}</h3>
            <div class="icons">
                <a href="{githubLink}">
                    <img class="icon {!githubLink ? "none" : ""}" src="{linkIconUris["github"]}" alt="github icon" />
                </a>
                <a href="{codebergLink}">
                    <img class="icon {!codebergLink ? "none" : ""}" src="{linkIconUris["codeberg"]}" alt="codeberg icon" style="transform:scale(1.3);"/>
                </a>
                <a href="{discordLink}">
                    <img class="icon {!discordLink ? "none" : ""}" src="{linkIconUris["discord"]}" alt="discord icon" />
                </a>
            </div>
        </div>
        <p>{description}</p>
    </div>
    <div class="status-box">
        <a href="{iconHref}" >
            <img class="icon {icon ===  "none" ? "none" : ""}" src="{iconUris[icon]}" alt="icon: {icon}" />
        </a>
        
        <div class="status">
            Status: 
            <div class="status-circle" style="--status-color:{statusColors[status]};" aria-label="{status}"></div>
        </div>
    </div>
</div>