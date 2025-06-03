-- Enable RLS and add policies for all main tables

-- Profiles Table
alter table profiles enable row level security;
create policy "Users can view their own profile" on profiles
  for select using (auth.uid() = id);
create policy "Users can insert their own profile" on profiles
  for insert with check (auth.uid() = id);
create policy "Users can update their own profile" on profiles
  for update using (auth.uid() = id);
create policy "Users can delete their own profile" on profiles
  for delete using (auth.uid() = id);

-- Preferences Table
alter table preferences enable row level security;
create policy "Users can view their own preferences" on preferences
  for select using (auth.uid() = id);
create policy "Users can insert their own preferences" on preferences
  for insert with check (auth.uid() = id);
create policy "Users can update their own preferences" on preferences
  for update using (auth.uid() = id);
create policy "Users can delete their own preferences" on preferences
  for delete using (auth.uid() = id);

-- Saved Recipes Table
alter table saved_recipes enable row level security;
create policy "Users can view their own saved recipes" on saved_recipes
  for select using (auth.uid() = user_id);
create policy "Users can insert their own saved recipes" on saved_recipes
  for insert with check (auth.uid() = user_id);
create policy "Users can update their own saved recipes" on saved_recipes
  for update using (auth.uid() = user_id);
create policy "Users can delete their own saved recipes" on saved_recipes
  for delete using (auth.uid() = user_id);

-- Progress Tracking Table
alter table progress_tracking enable row level security;
create policy "Users can view their own progress" on progress_tracking
  for select using (auth.uid() = user_id);
create policy "Users can insert their own progress" on progress_tracking
  for insert with check (auth.uid() = user_id);
create policy "Users can update their own progress" on progress_tracking
  for update using (auth.uid() = user_id);
create policy "Users can delete their own progress" on progress_tracking
  for delete using (auth.uid() = user_id); 