$(() => {

    $('.container').fadeOut(600) // Faz sumir o elemento suave 

    window.addEventListener('message', function (evento) {
        const status = evento.data.action;
        switch (status) {
            case 'show':
                $('.container').fadeIn(600);
                break;
        }
    });

    document.addEventListener('keydown', function (event) {
        if (event.key === 'Escape') {
            $('.container').fadeOut(600);
            $.post("http://registro/focusFalse")
        }
    })

})