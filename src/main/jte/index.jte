@import java.util.List
@import java.util.Map
@param gg.jte.Content body
@param String pageTitle
@param List<String> langs
@param Map<String, String> descriptions

<!DOCTYPE html>
<html lang="uk">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${pageTitle}</title>
    <style>
        :root {
            /* Light Mode Colors - Gray Shades */
            --bg-primary: #f5f5f5;
            --bg-secondary: #e0e0e0;
            --text-primary: #333333;
            --accent-color: #666666;
            --accent-hover: #444444;
        }
        [data-theme='dark'] {
            /* Dark Mode Colors - Gray Shades */
            --bg-primary: #1a1a1a;
            --bg-secondary: #2d2d2d;
            --text-primary: #e0e0e0;
            --accent-color: #808080;
            --accent-hover: #a0a0a0;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        html, body {
            width: 100%;
            min-width: 400px;
            overflow-x: hidden;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: var(--bg-primary);
            color: var(--text-primary);
            line-height: 1.6;
            padding: 20px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }
        .container {
            width: 100%;
            max-width: 1200px;
            margin: 0 auto;
            background-color: var(--bg-secondary);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            position: relative;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .theme-toggle {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: var(--accent-color);
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .theme-toggle:hover {
            background-color: var(--accent-hover);
            transform: scale(1.05);
        }
        .header-container {
            text-align: center;
            margin-bottom: 20px;
        }
        h1 {
            color: var(--accent-color);
            margin-bottom: 10px;
            transition: color 0.3s ease;
        }
        .sub-title {
            color: var(--text-primary);
            opacity: 0.7;
            font-size: 1rem;
        }
        .content {
            display: flex;
            flex-direction: column;
            gap: 20px;
            padding: 0 40px;
            width: 100%;
        }
        @media (max-width: 768px) {
            .theme-toggle {
                position: static;
                display: block;
                margin: 0 auto 20px;
            }
            .header-container {
                margin-top: 20px;
            }
            .content {
                padding: 0 20px;
            }
        }
        .card {
            background-color: var(--bg-primary);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 100%;
            transition: background-color 0.3s ease, transform 0.2s ease, box-shadow 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
        }
        .card h2 {
            color: var(--accent-color);
            margin-bottom: 10px;
            transition: color 0.3s ease;
        }
        .lang-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            margin-top: 20px;
        }
        .lang-card {
            background-color: var(--bg-secondary);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }
        .lang-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }
        .lang-title {
            color: var(--accent-color);
            font-size: 1.5em;
            margin-bottom: 10px;
        }
        .lang-description {
            color: var(--text-primary);
            font-size: 1rem;
            line-height: 1.5;
        }
        .home-button {
            display: inline-block;
            background-color: var(--accent-color);
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .home-button:hover {
            background-color: var(--accent-hover);
        }
    </style>
</head>
<body data-theme="light">
<div class="container">
    <button class="theme-toggle" onclick="toggleTheme()">Toggle Theme</button>
    <div class="header-container">
        <h1>JTE Demo</h1>
        <p class="sub-title">Explore Flexibility and Elegance in Web Design</p>
    </div>
    <div class="content">
        @if(langs.isEmpty())
            <p>You have no skills:(</p>
        @else
            <div class="lang-grid">
                @for(String lang : langs)
                    <div class="lang-card">
                        <h2 class="lang-title">${lang}</h2>
                        <p class="lang-description">${descriptions.get(lang)}</p>
                    </div>
                @endfor
            </div>
        @endif
        !{ var langSize = langs.size(); }
        <p>I have ${langSize} skills</p>
        <a href="/home" class="home-button">Go to Home Page</a>
    </div>
</div>

<script>
    function toggleTheme() {
        const body = document.body;
        const currentTheme = body.getAttribute('data-theme');
        body.setAttribute('data-theme', currentTheme === 'light' ? 'dark' : 'light');
    }
</script>
</body>
</html>

