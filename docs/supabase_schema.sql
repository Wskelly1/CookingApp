-- User Profiles Table
create table if not exists profiles (
  id uuid primary key references auth.users(id) on delete cascade,
  username text,
  full_name text,
  avatar_url text,
  created_at timestamp with time zone default timezone('utc'::text, now())
);

-- Preferences Table
create table if not exists preferences (
  id uuid primary key references auth.users(id) on delete cascade,
  dietary_restrictions text[],
  food_preferences text[],
  experience_level text,
  created_at timestamp with time zone default timezone('utc'::text, now())
);

-- Saved Recipes Table
create table if not exists saved_recipes (
  id bigserial primary key,
  user_id uuid references auth.users(id) on delete cascade,
  recipe_id text,
  saved_at timestamp with time zone default timezone('utc'::text, now())
);

-- Progress Tracking Table
create table if not exists progress_tracking (
  id bigserial primary key,
  user_id uuid references auth.users(id) on delete cascade,
  recipe_id text,
  step integer,
  completed boolean default false,
  updated_at timestamp with time zone default timezone('utc'::text, now())
); 