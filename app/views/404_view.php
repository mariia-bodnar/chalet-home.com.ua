<main class="container d-flex h-center v-center text-center error-page">
    <div>
        <span class="error-title">404</span>
        <span>That’s an error!</span>
        <p>The requested URL was not found on this server. That’s all we know.</p>
        <a class="btn" href="<?=SITE_URL?>"><?= $this->text('На головну')?></a>
    </div>
</main>

<style>
    main {
        background-color: #1f1206;
    }
    .error-title {
        font-size: 200px;
        display: block;
        filter: drop-shadow(2px 4px 6px black);
    }
    main .btn {
        margin-top: 15px;
        padding: 5px;
        text-align: center;
        font-weight: 600;
        font-family: "Kyiv Type Titling regular";
        display: flex;
        width: auto;
    }
  
</style>