# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

description = "Acme is expanding its Employee Service offerings, and IT Asset Management (ITAM) is a key pillar of this vision. We are building the next generation of asset management solutions , helping organizations track, manage, and optimize their IT assets directly within Acme. By leveraging the power of automation, integrations, and intelligent workflows , our ITAM solution will provide a seamless experience for IT teams and employees alike.\n<br>\n<br>\nWe are looking for a Staff Software Engineer to play a key technical leadership role in shaping the architecture, scalability, and extensibility of the ITAM platform. This role will focus on building enterprise-grade asset management capabilities , ensuring a secure, high-performance, and flexible solution that meets the needs of our customers.\n<br>\n<br>\nIf you’re passionate about high-scale software development, event-driven architectures, and delivering best-in-class enterprise IT solutions , we’d love to hear from you.\n<br>\n<br>\n<b>What You’ll Be Doing\n</b><br>\n<br>\n<b>Architect &amp; Build the Next Generation of IT Asset Management\n</b><br>\n<ul><li>Design and develop scalable, high-performance backend systems for IT asset tracking, lifecycle management, and compliance enforcement.\n<br>\n</li></ul><ul><li>Build and optimize GraphQL and REST APIs , ensuring seamless integrations with Acme’s ecosystem and external IT management tools.\n<br>\n</li><li>Work on data modeling and storage strategies to efficiently manage large volumes of IT asset records.\n<br>\n</li><li>Contribute to the evolution of Acme’s Employee Service platform , integrating ITAM with other service management capabilities .\n<br>\n</li>Lead efforts to enhance observability, reliability, and security , ensuring compliance with IT governance standards .<br>\n<li>\n<br>\n</li></ul>\n<b>Technical Leadership &amp; Collaboration\n</b><br>\n<ul><li>Provide technical mentorship and guidance to engineers across the ITAM team.\n<br>\n</li><li>Collaborate with Product Managers, Designers, and Engineers to define technical requirements and deliver high-quality solutions.\n<br>\n</li><li>Participate in architecture discussions and system design reviews , ensuring ITAM scales to meet enterprise needs.\n<br>\n</li><li>Work across teams to align ITAM functionality with workflows, automation, and approval processes within Acme.\n<br>\n</li>Drive initiatives that improve developer experience, system reliability, and engineering efficiency .<br>\n<li>\n<br>\n</li></ul>\n<b>Solve Complex Engineering Challenges\n</b><br>\n<ul><li>Optimize system performance and scalability , ensuring ITAM can handle millions of asset transactions across large organizations.\n<br>\n</li><li>Implement event-driven architectures to support automation, notifications, and integrations with third-party IT tools.\n<br>\n</li><li>Tackle multi-tenant SaaS challenges , ensuring asset management data remains secure, isolated, and performant .\n<br>\n</li>Design solutions that enable deep customization and extensibility , allowing customers to tailor ITAM to their specific needs.<br>\n<li>\n<br>\n</li></ul>\n\n<b>What We’re Looking For\n</b>\n<b>Required Qualifications\n</b><br>\n<ul><li>8+ years of experience designing, developing, testing, and shipping enterprise-grade software .\n<br>\n</li><li>Strong backend expertise in Ruby on Rails and experience with relational databases (MySQL/Aurora) .\n<br>\n</li><li>Experience building high-performance, scalable APIs using GraphQL and REST .\n<br>\n</li><li>Proven ability to architect and deliver complex solutions in a distributed, multi-tenant SaaS environment.\n<br>\n</li><li>Deep knowledge of data modeling, indexing strategies, and efficient querying techniques .\n<br>\n</li><li>Experience with event-driven architectures and messaging systems (e.g., Kafka, Sidekiq, or equivalent) .\n<br>\n</li><li>Strong problem-solving skills and ability to tackle scalability, reliability, and security challenges .\n<br>\n</li>Excellent communication and collaboration skills , with experience working across multiple teams.<br>\n<li>\n<br>\n</li></ul>\n<b>Preferred Qualifications\n</b><br>\n<ul><li>Experience working on IT Asset Management (ITAM), IT Service Management (ITSM), or enterprise IT solutions .\n<br>\n</li><li>Familiarity with workflow automation, approval systems, and IT compliance requirements .\n<br>\n</li><li>Knowledge of observability and monitoring tools (e.g., DataDog).\n<br>\n</li><li>Experience with multi-tenant SaaS architectures at scale.\n<br>\n</li>Background in integration development , connecting IT asset systems with third-party tools and APIs .<br>\n<li>\n<br>\n</li></ul>\n<b>Why You Should Apply\n</b>\n<ul><li>Be part of Acme’s future. IT Asset Management is a key pillar of our Employee Service strategy , with strong investment and executive support.\n<br>\n</li><li>Solve complex technical challenges. Work on event-driven automation, high-scale IT asset tracking, and enterprise integrations .\n<br>\n</li><li>Lead critical initiatives. Shape the architecture of Acme’s next-generation ITAM platform .\n<br>\n</li><li>Work with top engineering talent. Collaborate with world-class engineers, architects, and technical leaders .\n<br>\n</li>Enjoy flexibility and autonomy. Drive high-impact projects while maintaining a strong work-life balance .\n</ul>"
locations = %w(Brenswick Orvonia Krestal Drovnik Marnov Velshire Tarnovia Grenswick Osthaven Vradel)
salaries = [1000, 2000, 3000, 4000, 5000]
skills = %w(Ruby PHP Python Java JavaScript TypeScript C# C++ Go Swift Kotlin)

15.times do
  from, to = [salaries.sample, salaries.sample].minmax
  Vacancy.create!(
    company_id: Company.pluck(:id).sample,
    category_id: Category.pluck(:id).sample,
    seniority: Vacancy.seniorities.keys.sample,
    contract_type: Vacancy.contract_types.keys.sample,
    job_type: Vacancy.job_types.keys.sample,
    operating_mode: Vacancy.operating_modes.keys.sample,
    description:,
    salary_from: from,
    salary_to: to,
    salary_currency: "USD",
    location: locations.sample,
    skills: skills.sample(4)
  )
end
