# Job Listings App

A simple fullstack application built with **Ruby on Rails** and styled with **Tailwind CSS**.  
Users can post, browse, and manage job opportunities in a minimal interface.

## Features
- Create and manage job listings _(work in progress)_
- Browse available jobs
- Responsive UI

## Tech Stack
- **Backend:** Ruby v3.4.2, Rails v8.0.2.1
- **Frontend:** Stimulus JS, Tailwind CSS
- **Database:** PostgreSQL

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/Dabrovsky/jobs-aggregator.git
   cd jobs-aggregator
   ```

2. Install dependencies:
   ```bash
   bundle install
   bun install
   ```

3. Set up the database:
   ```bash
   rails db:create db:migrate db:seed
   ```

4. Run the server:
   ```bash
   bin/dev
   ```

5. Open in your browser:
   ```
   http://localhost:3000
   ```

### Screenshots

<img width="1407" height="1028" alt="listing_page" src="https://github.com/user-attachments/assets/c78b9f0f-8740-4588-b7c4-96aa973ad691" />
<img width="1392" height="1647" alt="details_page" src="https://github.com/user-attachments/assets/dd7bd8ac-2545-4d21-bd4f-0a87c6da0261" />
