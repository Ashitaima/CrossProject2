@import java.util.List
@param List<String> messages

<%-- This is a JTE comment demonstrating the comment feature --%>

@template.main.layout(
    content = @`
        <%-- Using variables demonstration --%>
        !{ var count = messages.size(); }
        !{ var headerText = "Demo of JTE Features"; }

        <div class="demo-container">
            <h2>${headerText}</h2>

            <%-- Using loops and if statements --%>
            @if(messages.isEmpty())
                <p>No messages to display</p>
            @else
                <ul>
                    @for(var message : messages)
                        <li>${message} (${count} total messages)</li>
                    @endfor
                </ul>
            @endif

            <%-- Demonstrating varargs with a helper template --%>
            @template.helpers.message("Message 1", "Message 2", "Message 3")
        </div>
    `,
    title = "JTE Demo Page",
    language = "uk"
)
