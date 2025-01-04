<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Engineer sai</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background: #f3f4f6;
            color: #333;
        }

        /* Header Styles */
        header {
            background: linear-gradient(135deg, #1f2937, #4b5563);
            color: white;
            padding: 40px 20px;
            text-align: center;
        }
        header h1 {
            font-size: 3em;
            margin: 0;
        }
        header p {
            font-size: 1.2em;
            margin: 10px 0 0;
            opacity: 0.9;
        }
        nav {
            margin-top: 20px;
        }
        nav a {
            color: white;
            text-decoration: none;
            margin: 0 15px;
            font-size: 1.1em;
            transition: color 0.3s;
        }
        nav a:hover {
            color: #38bdf8;
        }

        /* Section Styling */
        section {
            padding: 60px 20px;
            max-width: 1200px;
            margin: 0 auto;
        }
        section h2 {
            font-size: 2.5em;
            margin-bottom: 20px;
            text-align: center;
            color: #1f2937;
            position: relative;
        }
        section h2::after {
            content: '';
            display: block;
            width: 100px;
            height: 4px;
            background: #38bdf8;
            margin: 10px auto 0;
        }

        /* About Section */
        .about p {
            font-size: 1.2em;
            line-height: 1.6;
            text-align: center;
        }

        /* Skills Section */
        .skills ul {
            list-style: none;
            padding: 0;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .skills ul li {
            background: #1f2937;
            color: white;
            padding: 10px 20px;
            margin: 10px;
            border-radius: 50px;
            font-size: 1em;
            transition: transform 0.3s;
        }
        .skills ul li:hover {
            transform: scale(1.1);
        }

        /* Projects Section */
        .projects .project {
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
            padding: 20px;
            border-radius: 8px;
            transition: box-shadow 0.3s;
        }
        .projects .project:hover {
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
        }
        .projects .project h3 {
            margin: 0 0 10px;
            color: #1f2937;
        }
        .projects .project p {
            margin: 0;
            line-height: 1.6;
        }

        /* Contact Section */
        .contact form {
            display: flex;
            flex-direction: column;
            align-items: center;
            max-width: 500px;
            margin: 0 auto;
        }
        .contact input, .contact textarea, .contact button {
            width: 100%;
            margin-bottom: 15px;
            padding: 15px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
        }
        .contact input:focus, .contact textarea:focus {
            outline: none;
            border-color: #38bdf8;
        }
        .contact button {
            background: #38bdf8;
            color: white;
            border: none;
            cursor: pointer;
            transition: background 0.3s;
        }
        .contact button:hover {
            background: #0284c7;
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 20px;
            background: #1f2937;
            color: white;
            font-size: 0.9em;
        }
        footer a {
            color: #38bdf8;
            text-decoration: none;
        }
        footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <header>
        <h1>sai - DevOps Engineer</h1>
        <p>Building Automation & Scalable Solutions for Modern Applications</p>
        <nav>
            <a href="#about">About</a>
            <a href="#skills">Skills</a>
            <a href="#projects">Projects</a>
            <a href="#contact">Contact</a>
        </nav>
    </header>

    <section id="about" class="about">
        <h2>About Me</h2>
        <p>Hello! I'm sai nadh, a DevOps Engineer passionate about optimizing workflows and delivering scalable, automated solutions. I specialize in tools like Jenkins, Docker, Kubernetes, Terraform, and cloud platforms such as AWS and Azure.</p>
    </section>

    <section id="skills" class="skills">
        <h2>Skills</h2>
        <ul>
            <li>CI/CD - Jenkins, GitHub Actions</li>
            <li>Containerization - Docker</li>
            <li>Orchestration - Kubernetes</li>
            <li>Infrastructure as Code - Terraform</li>
            <li>Cloud Platforms - AWS, Azure</li>
            <li>Monitoring - Prometheus, Grafana</li>
        </ul>
    </section>

    <section id="projects" class="projects">
        <h2>Projects</h2>
        <div class="project">
            <h3>Bank Application Deployment</h3>
            <p>Deployed a three-tier banking app using Kubernetes, Docker, and MySQL, ensuring high availability and security.</p>
        </div>
        <div class="project">
            <h3>Jenkins CI/CD Pipeline</h3>
            <p>Created a robust CI/CD pipeline integrating SonarQube, Trivy, and Docker for secure and quality-focused deployments.</p>
        </div>
        <div class="project">
            <h3>AWS Infrastructure Automation</h3>
            <p>Automated EC2 instance provisioning and application deployment using Terraform and CFT</p>
        </div>
    </section>

    <section id="contact" class="contact">
        <h2>Contact</h2>
        <form>
            <input type="text" placeholder="Your Name" required>
            <input type="email" placeholder="Your Email" required>
            <textarea placeholder="Your Message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </section>

    <footer>
        <p>© 2024 Mustafa | DevOps Engineer Portfolio | <a href="#about">Back to Top</a></p>
    </footer>
</body>
</html>
