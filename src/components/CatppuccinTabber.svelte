<script lang="ts">
	import pallete from '$lib/colors';
	import ProjectCard from './parts/ProjectCard.svelte';

	let activeTab = 'projects';

	let getSetActiveTab = (tabName: string) => {
		return () => {
			activeTab = tabName;
		};
	};
</script>

<div
	class="surface"
	style="background-color:{pallete.colors.surface0.hex}; --text-color:{pallete.colors.text.hex};"
>
	<div id="navbar">
		<div
			class="navbar-item {activeTab === 'about' ? '' : 'disabled'}"
			on:click={getSetActiveTab('about')}
			on:keypress={getSetActiveTab('about')}
			aria-roledescription="Change visible tab to About"
			role="button"
			tabindex="0"
		>
			<div class="navbar-header">
				About
				<div class="selector-bar"></div>
			</div>
		</div>
		<div
			class="navbar-item {activeTab === 'projects' ? '' : 'disabled'}"
			on:click={getSetActiveTab('projects')}
			on:keypress={getSetActiveTab('projects')}
			aria-roledescription="Change visible tab to Projects"
			role="button"
			tabindex="0"
		>
			<div class="navbar-header">
				Projects
				<div class="selector-bar"></div>
			</div>
		</div>
	</div>
	<div id="rest">
		{#if activeTab === 'about'}
			hi (about)
		{:else if activeTab === 'projects'}
			<ProjectCard
				name="Genesis"
				description="a feature-rich multiplatform discord client made in kotlin compose"
				icon="no-download"
				status="active"
				githubLink="https://github.com/uninit-org/genesis"
				codebergLink="https://codeberg.org/uninit/genesis"
				discordLink="https://discord.gg/YcN7Pq7aNQ"
			/>
			<ProjectCard
				name="mewsic"
				description="a feature-rich multiplatform music listening client that can pull from youtube, soundcloud, spotify, and more"
				icon="no-download"
				status="inactive"
				githubLink="https://github.com/uninit-org"
				codebergLink="https://codeberg.org/uninit"
				discordLink="https://discord.gg/YcN7Pq7aNQ"
			/>
			<ProjectCard
				name="RootVM"
				description="an x86_64 asm inspired JIT VM made in rust"
				icon="no-download"
				status="inactive"
				githubLink="https://github.com/uninit-org/rootvm"
				codebergLink="https://codeberg.org/uninit/rootvm"
				discordLink="https://discord.gg/YcN7Pq7aNQ"
			/>
			<ProjectCard
				name="aenri.loveh.art"
				description="this site! made with bun and svelte"
				icon="web"
				iconHref="https://aenri.loveh.art"
				status="active"
				githubLink="https://github.com/aenriii/aenri.loveh.art"
			/>

			<ProjectCard
				name="libaenri"
				description="the backend for this site! shows some discord user info, as well as a broadcast websocket showcasing my currently playing song on spotify (or most recent on lastfm)"
				icon="no-download"
				status="inactive"
				githubLink="https://github.com/aenriii/libaenri"
			/>
		{/if}
	</div>
</div>

<style lang="scss">
	.surface {
		display: flex;
		justify-content: flex-start;
		// align-items: center;
		border-radius: 50px;
		@media (max-width: 568px) {
			flex: 1;
			min-width: calc(100% - 25px);
            order: 2;
		}
		@media (min-width: 568px) and (max-width: 768px) {
			flex: 1;
			min-width: calc(100% - 50px);
            order: 2;

		}
		@media (min-width: 768px) {
			flex: 0.6;
			min-height: calc(100% - 100px);
            order: 1;

		}

		flex-direction: column;
	}

	.navbar-item {
		user-select: none;
		cursor: pointer;
		font-size: 32px;
		font-weight: bold;
		color: var(--text-color);
		// width: fit-content;

		& .navbar-header {
			display: flex;
			flex-direction: column;
			align-items: center;
			justify-content: space-between;
		    gap: 5px;

		}
		& .selector-bar {
			width: 70%;
			height: 5px;
			background-color: var(--text-color);
			border-radius: 5px;
		}
		transition: filter 0.2s;
	}
	.disabled {
		filter: brightness(0.8);
	}

	#navbar {
		display: flex;
		flex-direction: row;
		justify-content: center;
		gap: 20px;
		@media (max-width: 568px) {
			flex-direction: column;
			gap: 25px;
		}
		padding: 25px;
		height: fit-content;
	}

	#rest {
		color: var(--text-color);
		// display: flex;
		// flex-flow: row wrap;
        display: grid;
        grid-gap: 10px;
        grid-template-columns: repeat(auto-fill, minmax(250px,1fr));
		align-content: space-between;
		padding: 25px;
		gap: 25px;
		justify-content: stretch;
		column-count: 2;
	}
</style>
