$('#chat-form').on('submit', function (e) {
    e.preventDefault();
    let msg = $('#user-msg').val();
    const key = Math.random().toString(36).substring(2,7);
    let html = `<div id="${key}" class="msg-container right progress">
    <div class="user-msg msg"><span>${msg}</span></div>
    </div>`
    if($('.no-msg').length > 0) {
        $('.no-msg').remove();
    }
    $('.chat-body').append(html)
      setTimeout(function() {
        scrollToBottom();
    }, 100);
    $.ajax({
        type: 'POST',
        cache: false,
        data: {msg: msg},
        url: 'check',
        success: function(response) {
            
            let result = `<div class="bot-msg msg">
            <img src="bot.png" alt="">
            <span>${response}</span>
            </div>`
            $('.chat-body').append(result)
            $(`#${key}`).removeClass('progress')
            $('#chat-form')[0].reset();
        }
    })
})

let index = 2;
$('.qna-btn').click(function(e) {
    e.preventDefault();
    let html = `<div class="added-input single-input">
        <input required type="text" name="ques[]" class="qna-input" placeholder="Question ${index}">
        <button class="close-qna">Close</button>
    </div>`;
    $('.qna-inputs').append(html);
    index++;
    const scrollHeightBefore = $('.add-qna')[0].scrollHeight;
    $('.add-qna').animate({ scrollTop: scrollHeightBefore }, 'slow');
    checkAdded();
    
    // Set focus to the newly added input field
    $('.added-input:last-child input').focus();
});

$('.qna-inputs').on('click', '.close-qna', function() {
    $(this).parent().remove();
    index--;
    renumberQuestions();
    checkAdded();
});

function renumberQuestions() {
    $('.single-input').each(function(index) {
        $(this).find('.qna-input').attr('placeholder', `Question ${index + 1}`);
    });
}

$('.closeall-btn').click(function() {
    $('.added-input').remove();
    index = 2;
    checkAdded()
})

function checkAdded() {
    let inputs = $('.added-input');
    if(inputs.length > 0) {
        $('.closeall-btn').attr('disabled', false);
    }
    else {
        $('.closeall-btn').attr('disabled', true);
    }
}

function scrollToBottom() {
    const chatBody = $('.chat-body');
    chatBody.scrollTop(chatBody.prop('scrollHeight'));
}

// Scroll to the bottom on page load
$(document).ready(function() {
    scrollToBottom();
});