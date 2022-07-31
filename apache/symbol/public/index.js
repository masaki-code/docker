(() => {
    const onload = () => {
        const testBtn = document.querySelector("#testBtn");
        const testBtnClick = () => {
            let href = "/php/";
            href = href + "?a";
            href = href + "&b=hoge";
            href = href + "&c=" + encodeURIComponent("&");
            href = href + "&d=" + encodeURIComponent("<");
            href = href + "&e=" + encodeURIComponent(">");

            location.href = href;
        };

        testBtn.addEventListener("click", testBtnClick);
    }

    window.onload = onload;
})();

