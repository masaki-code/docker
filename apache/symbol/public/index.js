(() => {
    const onload = () => {
        const testBtn = document.querySelector("#testBtn");
        const testBtnClick = () => {
            let href = "/php/";
            href = href + "?test";
            href = href + "&hoge=hoge";
            href = href + "&piyo=" + encodeURIComponent("&");

            location.href = href;
        };

        testBtn.addEventListener("click", testBtnClick);
    }

    window.onload = onload;
})();

