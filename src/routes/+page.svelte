<script>
	import { onMount } from "svelte";
	import CatppuccinTabber from "../components/CatppuccinTabber.svelte";
    import PageHost from "../components/PageHost.svelte";
	import ProfileCard from "../components/ProfileCard.svelte";

    let isMobile = false;


</script>

<PageHost>
    <CatppuccinTabber />
    <ProfileCard />
</PageHost>