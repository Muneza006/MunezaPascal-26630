import React, { useState } from 'react';
import { Github, Linkedin, Mail, ExternalLink, Menu, X, Phone, MessageCircle } from 'lucide-react';

export default function Portfolio() {
  const [isMenuOpen, setIsMenuOpen] = useState(false);

  const projects = [
    {
      title: "Land Parcel Mapping and Farm Management System",
      description: "A full-stack web application designed to digitally map land parcels and manage farm activities such as crop tracking, land ownership records, input management, and reporting. The system improves land data accuracy and supports efficient farm decision-making.",
      tags: ["React.js", "Node.js", "Express.js", "MySQL", "Mapping APIs"],
      link: "#"
    }
  ];

  const skillCategories = {
    "Frontend": ["HTML", "CSS", "JavaScript", "React.js"],
    "Backend": ["Node.js", "Express.js", "RESTful APIs", "Server-side Development"],
    "Database": ["MySQL", "PostgreSQL", "Oracle (PL/SQL)"],
    "Tools": ["Git", "GitHub", "Visual Studio Code", "Postman"]
  };

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900 text-white">
      {/* Navigation */}
      <nav className="fixed w-full bg-slate-900/80 backdrop-blur-sm z-50 border-b border-slate-700">
        <div className="max-w-6xl mx-auto px-4 py-4">
          <div className="flex justify-between items-center">
            <h1 className="text-2xl font-bold bg-gradient-to-r from-blue-400 to-purple-400 bg-clip-text text-transparent">
              Muneza Pascal
            </h1>
            
            <div className="hidden md:flex gap-8">
              <a href="#about" className="hover:text-blue-400 transition">About</a>
              <a href="#skills" className="hover:text-blue-400 transition">Skills</a>
              <a href="#projects" className="hover:text-blue-400 transition">Projects</a>
              <a href="#contact" className="hover:text-blue-400 transition">Contact</a>
            </div>

            <button 
              className="md:hidden"
              onClick={() => setIsMenuOpen(!isMenuOpen)}
            >
              {isMenuOpen ? <X /> : <Menu />}
            </button>
          </div>

          {isMenuOpen && (
            <div className="md:hidden mt-4 pb-4 flex flex-col gap-4">
              <a href="#about" className="hover:text-blue-400 transition">About</a>
              <a href="#skills" className="hover:text-blue-400 transition">Skills</a>
              <a href="#projects" className="hover:text-blue-400 transition">Projects</a>
              <a href="#contact" className="hover:text-blue-400 transition">Contact</a>
            </div>
          )}
        </div>
      </nav>

      <section className="pt-32 pb-20 px-4">
        <div className="max-w-6xl mx-auto">
          <div className="text-center">
            <h2 className="text-5xl md:text-7xl font-bold mb-6">
              Hi, I'm <span className="bg-gradient-to-r from-blue-400 to-purple-400 bg-clip-text text-transparent">Muneza Pascal</span>
            </h2>
            <p className="text-xl md:text-2xl text-slate-300 mb-8">
              Software Engineering Student | Full Stack Developer | Agriculture Tech Enthusiast
            </p>
            <div className="flex gap-4 justify-center">
              <a href="#contact" className="bg-blue-500 hover:bg-blue-600 px-8 py-3 rounded-lg font-semibold transition">
                Get In Touch
              </a>
              <a href="#projects" className="border border-slate-500 hover:border-blue-400 px-8 py-3 rounded-lg font-semibold transition">
                View Work
              </a>
            </div>
          </div>
        </div>
      </section>

      <section id="about" className="py-20 px-4 bg-slate-800/50">
        <div className="max-w-4xl mx-auto">
          <h3 className="text-4xl font-bold mb-8 text-center">About Me</h3>
          <p className="text-lg text-slate-300 leading-relaxed">
            I am a Software Engineering student with a strong passion for full-stack web development. 
            I enjoy building real-world systems that solve practical problems, especially in agriculture 
            and land management. My interests include frontend and backend development, database design, 
            and creating scalable, secure applications. I am committed to continuous learning and applying 
            technology to make a positive impact in society.
          </p>
        </div>
      </section>

      <section id="skills" className="py-20 px-4">
        <div className="max-w-6xl mx-auto">
          <h3 className="text-4xl font-bold mb-12 text-center">Skills & Technologies</h3>
          <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
            {Object.entries(skillCategories).map(([category, skills], index) => (
              <div key={index} className="bg-slate-800 border border-slate-700 rounded-lg p-6">
                <h4 className="text-xl font-bold mb-4 text-blue-400">{category}</h4>
                <div className="flex flex-col gap-2">
                  {skills.map((skill, i) => (
                    <div 
                      key={i}
                      className="text-slate-300 hover:text-white transition"
                    >
                      • {skill}
                    </div>
                  ))}
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      <section id="projects" className="py-20 px-4 bg-slate-800/50">
        <div className="max-w-6xl mx-auto">
          <h3 className="text-4xl font-bold mb-12 text-center">Featured Project</h3>
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
            {projects.map((project, index) => (
              <div 
                key={index}
                className="bg-slate-800 border border-slate-700 rounded-lg p-6 hover:border-blue-400 transition group md:col-span-2 lg:col-span-3"
              >
                <div className="flex justify-between items-start mb-4">
                  <h4 className="text-xl font-bold">{project.title}</h4>
                  <a 
                    href={project.link}
                    className="text-slate-400 hover:text-blue-400 transition"
                  >
                    <ExternalLink size={20} />
                  </a>
                </div>
                <p className="text-slate-300 mb-4">{project.description}</p>
                <div className="flex flex-wrap gap-2">
                  {project.tags.map((tag, i) => (
                    <span 
                      key={i}
                      className="text-sm bg-slate-900 px-3 py-1 rounded"
                    >
                      {tag}
                    </span>
                  ))}
                </div>
              </div>
            ))}
          </div>
        </div>
      </section>

      <section id="contact" className="py-20 px-4">
        <div className="max-w-4xl mx-auto text-center">
          <h3 className="text-4xl font-bold mb-8">Let's Connect</h3>
          <p className="text-lg text-slate-300 mb-8">
            I'm always open to new opportunities and collaborations. Feel free to reach out!
          </p>
          <div className="flex gap-6 justify-center flex-wrap">
            <a 
              href="mailto:munezapascal006@gmail.com"
              className="bg-slate-800 hover:bg-slate-700 p-4 rounded-full transition"
              title="Email"
            >
              <Mail size={24} />
            </a>
            <a 
              href="https://github.com/Muneza006"
              target="_blank"
              rel="noopener noreferrer"
              className="bg-slate-800 hover:bg-slate-700 p-4 rounded-full transition"
              title="GitHub"
            >
              <Github size={24} />
            </a>
            <a 
              href="https://www.linkedin.com/in/pascal-muneza"
              target="_blank"
              rel="noopener noreferrer"
              className="bg-slate-800 hover:bg-slate-700 p-4 rounded-full transition"
              title="LinkedIn"
            >
              <Linkedin size={24} />
            </a>
            <a 
              href="tel:+250790765114"
              className="bg-slate-800 hover:bg-slate-700 p-4 rounded-full transition"
              title="Phone"
            >
              <Phone size={24} />
            </a>
            <a 
              href="https://wa.me/250790765114"
              target="_blank"
              rel="noopener noreferrer"
              className="bg-slate-800 hover:bg-slate-700 p-4 rounded-full transition"
              title="WhatsApp"
            >
              <MessageCircle size={24} />
            </a>
          </div>
        </div>
      </section>

      <footer className="py-8 px-4 border-t border-slate-700 text-center text-slate-400">
        <p>© 2026 Muneza Pascal. Built with React & Tailwind CSS</p>
      </footer>
    </div>
  );
}