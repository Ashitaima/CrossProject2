@param java.util.List<String> projects

@template.main.layout(content = @`
    <div>
        <h3>My Projects</h3>
        <ul>
            @for(String project : projects)
                <li>${project}</li>
            @endfor
        </ul>
    </div>
`)
