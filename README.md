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

## Screenshots

<img width="2880" height="3272" alt="listing_page" src="https://github.com/user-attachments/assets/dc5276e4-65aa-4e7d-98a2-15d52cfd4e77" />
<img width="2880" height="4094" alt="details_page" src="https://github.com/user-attachments/assets/82a4cbd3-917b-44f7-bd96-b1d825c0b1bf" />
