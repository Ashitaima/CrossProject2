@param String... messages

<div class="messages">
    <%-- Demonstrating varargs parameter usage --%>
    @for(String msg : messages)
        <div class="message">${msg}</div>
    @endfor
</div>
