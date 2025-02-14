class ChangeToUtf8Mb4 < ActiveRecord::Migration
  def self.up
    execute "DROP INDEX index_clicks_on_org on clicks"
    execute "DROP INDEX index_clicks_on_action on clicks"
    execute "DROP INDEX index_code_cells_on_md5 on code_cells"
    execute "DROP INDEX index_notebooks_on_title on notebooks"
    execute "DROP INDEX index_notebooks_on_uuid on notebooks"
    execute "DROP INDEX index_notebooks_on_lang on notebooks"
    execute "DROP INDEX index_notebooks_on_owner_type_and_owner_id on notebooks"
    execute "DROP INDEX index_groups_on_gid on groups"
    execute "DROP INDEX index_tags_on_tag on tags"
    execute "DROP INDEX index_change_requests_on_reqid on change_requests"
    execute "DROP INDEX index_change_requests_on_status on change_requests"
    execute "DROP INDEX index_commontator_comments_on_c_id_and_c_type_and_t_id on commontator_comments"
    execute "DROP INDEX index_commontator_subscriptions_on_s_id_and_s_type_and_t_id on commontator_subscriptions"
    execute "DROP INDEX index_commontator_threads_on_c_id_and_c_type on commontator_threads"
    execute "DROP INDEX index_oauth_access_grants_on_token on oauth_access_grants"
    execute "DROP INDEX index_oauth_access_tokens_on_token on oauth_access_tokens"
    execute "DROP INDEX index_oauth_access_tokens_on_refresh_token on oauth_access_tokens"
    execute "DROP INDEX index_oauth_applications_on_uid on oauth_applications"
    execute "DROP INDEX unique_schema_migrations on schema_migrations"
    execute "DROP INDEX index_stages_on_uuid on stages"
    execute "DROP INDEX index_users_on_email on users"
    execute "DROP INDEX index_users_on_reset_password_token on users"
    execute "DROP INDEX index_users_on_confirmation_token on users"
    execute "DROP INDEX index_users_on_user_name on users"
    execute "DROP INDEX unique_username on users"
    execute "DROP INDEX index_reviews_on_revtype on reviews"
    execute "DROP INDEX index_reviews_on_status on reviews"
    execute "DROP INDEX index_suggested_notebooks_on_source_type_and_source_id on suggested_notebooks"
    execute "DROP INDEX index_votes_on_voter_id_and_voter_type_and_vote_scope on votes"
    execute "DROP INDEX index_votes_on_votable_id_and_votable_type_and_vote_scope on votes"

    execute "ALTER TABLE change_requests CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE clicks CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE code_cells CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE commontator_comments CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE commontator_subscriptions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE commontator_threads CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE deprecated_notebooks CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE environments CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE execution_histories CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE executions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE feedbacks CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE groups CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE groups_users CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE identities CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE keywords CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE notebook_dailies CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE notebook_files CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE notebook_similarities CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE notebook_summaries CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE notebooks CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE oauth_access_grants CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE oauth_access_tokens CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE oauth_applications CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE preferences CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE recommended_reviewers CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE resources CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE reviews CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE revisions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE schema_migrations CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE shares CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE site_warnings CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE stages CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE stars CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE subscriptions CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE suggested_groups CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE suggested_notebooks CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE suggested_tags CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE tags CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE user_preferences CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE user_similarities CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE user_summaries CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE users CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE users_also_views CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"
    execute "ALTER TABLE votes CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_bin"

    execute "CREATE INDEX index_clicks_on_org on clicks (org(191))"
    execute "CREATE INDEX index_clicks_on_action on clicks (org(191))"
    execute "CREATE INDEX index_code_cells_on_md5 on code_cells (md5(191))"
    execute "CREATE INDEX index_commontator_comments_on_c_id_and_c_type_and_t_id on commontator_comments (creator_id, creator_type(191), thread_id)"
    execute "CREATE UNIQUE INDEX index_commontator_subscriptions_on_s_id_and_s_type_and_t_id on commontator_subscriptions (subscriber_id, subscriber_type(191), thread_id)"
    execute "CREATE UNIQUE INDEX index_commontator_threads_on_c_id_and_c_type on commontator_threads (commontable_id, commontable_type(191))"
    execute "CREATE UNIQUE INDEX index_change_requests_on_reqid on change_requests (reqid(191))"
    execute "CREATE INDEX index_change_requests_on_status on change_requests (status(191))"
    execute "CREATE UNIQUE INDEX index_groups_on_gid on groups (gid(191))"
    execute "CREATE INDEX index_notebooks_on_title on notebooks (title(191))"
    execute "CREATE INDEX index_notebooks_on_uuid on notebooks (uuid(191))"
    execute "CREATE INDEX index_notebooks_on_lang on notebooks (lang(191))"
    execute "CREATE INDEX index_notebooks_on_owner_type_and_owner_id on notebooks (owner_type(191), owner_id)"
    execute "CREATE UNIQUE INDEX index_oauth_access_grants_on_token on oauth_access_grants (token(191))"
    execute "CREATE UNIQUE INDEX index_oauth_access_tokens_on_token on oauth_access_tokens (token(191))"
    execute "CREATE UNIQUE INDEX index_oauth_access_tokens_on_refresh_token on oauth_access_tokens (refresh_token(191))"
    execute "CREATE UNIQUE INDEX index_oauth_applications_on_uid on oauth_applications (uid(191))"
    execute "CREATE UNIQUE INDEX unique_schema_migrations on schema_migrations (version(191))"
    execute "CREATE UNIQUE INDEX index_stages_on_uuid on stages (uuid(191))"
    execute "CREATE INDEX index_tags_on_tag on tags (tag(191))"
    execute "CREATE UNIQUE INDEX index_users_on_email on users (email(191))"
    execute "CREATE UNIQUE INDEX index_users_on_reset_password_token on users (reset_password_token(191))"
    execute "CREATE UNIQUE INDEX index_users_on_confirmation_token on users (confirmation_token(191))"
    execute "CREATE INDEX index_users_on_user_name on users (user_name(191))"
    execute "CREATE UNIQUE INDEX unique_username on users (user_name(191))"
    execute "CREATE INDEX index_reviews_on_revtype on reviews (revtype(191))"
    execute "CREATE INDEX index_reviews_on_status on reviews (status(191))"
    execute "CREATE INDEX index_suggested_notebooks_on_source_type_and_source_id on suggested_notebooks (source_type(191), source_id)"
    execute "CREATE INDEX index_votes_on_voter_id_and_voter_type_and_vote_scope on votes (voter_id, voter_type(191), vote_scope(191))"
    execute "CREATE INDEX index_votes_on_votable_id_and_votable_type_and_vote_scope on votes(votable_id, votable_type(191), vote_scope(191))"
  end
  def self.down
    execute "DROP INDEX index_clicks_on_org on clicks"
    execute "DROP INDEX index_clicks_on_action on clicks"
    execute "DROP INDEX index_code_cells_on_md5 on code_cells"
    execute "DROP INDEX index_notebooks_on_title on notebooks"
    execute "DROP INDEX index_notebooks_on_uuid on notebooks"
    execute "DROP INDEX index_notebooks_on_lang on notebooks"
    execute "DROP INDEX index_notebooks_on_owner_type_and_owner_id on notebooks"
    execute "DROP INDEX index_groups_on_gid on groups"
    execute "DROP INDEX index_tags_on_tag on tags"
    execute "DROP INDEX index_change_requests_on_reqid on change_requests"
    execute "DROP INDEX index_change_requests_on_status on change_requests"
    execute "DROP INDEX index_commontator_comments_on_c_id_and_c_type_and_t_id on commontator_comments"
    execute "DROP INDEX index_commontator_subscriptions_on_s_id_and_s_type_and_t_id on commontator_subscriptions"
    execute "DROP INDEX index_commontator_threads_on_c_id_and_c_type on commontator_threads"
    execute "DROP INDEX index_oauth_access_grants_on_token on oauth_access_grants"
    execute "DROP INDEX index_oauth_access_tokens_on_token on oauth_access_tokens"
    execute "DROP INDEX index_oauth_access_tokens_on_refresh_token on oauth_access_tokens"
    execute "DROP INDEX index_oauth_applications_on_uid on oauth_applications"
    execute "DROP INDEX unique_schema_migrations on schema_migrations"
    execute "DROP INDEX index_stages_on_uuid on stages"
    execute "DROP INDEX index_users_on_email on users"
    execute "DROP INDEX index_users_on_reset_password_token on users"
    execute "DROP INDEX index_users_on_confirmation_token on users"
    execute "DROP INDEX index_users_on_user_name on users"
    execute "DROP INDEX unique_username on users"
    execute "DROP INDEX index_reviews_on_revtype on reviews"
    execute "DROP INDEX index_reviews_on_status on reviews"
    execute "DROP INDEX index_suggested_notebooks_on_source_type_and_source_id on suggested_notebooks"
    execute "DROP INDEX index_votes_on_voter_id_and_voter_type_and_vote_scope on votes"
    execute "DROP INDEX index_votes_on_votable_id_and_votable_type_and_vote_scope on votes"

    execute "ALTER TABLE change_requests CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE clicks CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE code_cells CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE commontator_comments CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE commontator_subscriptions CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE commontator_threads CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE deprecated_notebooks CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE environments CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE execution_histories CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE executions CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE feedbacks CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE groups CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE groups_users CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE identities CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE keywords CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE notebook_dailies CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE notebook_files CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE notebook_similarities CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE notebook_summaries CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE notebooks CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE oauth_access_grants CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE oauth_access_tokens CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE oauth_applications CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE preferences CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE recommended_reviewers CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE resources CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE reviews CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE revisions CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE schema_migrations CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE shares CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE site_warnings CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE stages CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE stars CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE subscriptions CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE suggested_groups CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE suggested_notebooks CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE suggested_tags CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE tags CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE user_preferences CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE user_similarities CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE user_summaries CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE users CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE users_also_views CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"
    execute "ALTER TABLE votes CONVERT TO CHARACTER SET utf8 COLLATE utf8_general_ci"

    execute "CREATE INDEX index_clicks_on_org on clicks (org)"
    execute "CREATE INDEX index_clicks_on_action on clicks (org)"
    execute "CREATE INDEX index_code_cells_on_md5 on code_cells (md5)"
    execute "CREATE INDEX index_commontator_comments_on_c_id_and_c_type_and_t_id on commontator_comments (creator_id, creator_type, thread_id)"
    execute "CREATE UNIQUE INDEX index_commontator_subscriptions_on_s_id_and_s_type_and_t_id on commontator_subscriptions (subscriber_id, subscriber_type, thread_id)"
    execute "CREATE UNIQUE INDEX index_commontator_threads_on_c_id_and_c_type on commontator_threads (commontable_id, commontable_type)"
    execute "CREATE UNIQUE INDEX index_change_requests_on_reqid on change_requests (reqid)"
    execute "CREATE INDEX index_change_requests_on_status on change_requests (status)"
    execute "CREATE UNIQUE INDEX index_groups_on_gid on groups (gid)"
    execute "CREATE INDEX index_notebooks_on_title on notebooks (title)"
    execute "CREATE INDEX index_notebooks_on_uuid on notebooks (uuid)"
    execute "CREATE INDEX index_notebooks_on_lang on notebooks (lang)"
    execute "CREATE INDEX index_notebooks_on_owner_type_and_owner_id on notebooks (owner_type, owner_id)"
    execute "CREATE UNIQUE INDEX index_oauth_access_grants_on_token on oauth_access_grants (token)"
    execute "CREATE UNIQUE INDEX index_oauth_access_tokens_on_token on oauth_access_tokens (token)"
    execute "CREATE UNIQUE INDEX index_oauth_access_tokens_on_refresh_token on oauth_access_tokens (refresh_token)"
    execute "CREATE UNIQUE INDEX index_oauth_applications_on_uid on oauth_applications (uid)"
    execute "CREATE UNIQUE INDEX unique_schema_migrations on schema_migrations (version)"
    execute "CREATE UNIQUE INDEX index_stages_on_uuid on stages (uuid)"
    execute "CREATE INDEX index_tags_on_tag on tags (tag)"
    execute "CREATE UNIQUE INDEX index_users_on_email on users (email)"
    execute "CREATE UNIQUE INDEX index_users_on_reset_password_token on users (reset_password_token)"
    execute "CREATE UNIQUE INDEX index_users_on_confirmation_token on users (confirmation_token)"
    execute "CREATE INDEX index_users_on_user_name on users (user_name)"
    execute "CREATE UNIQUE INDEX unique_username on users (user_name)"
    execute "CREATE INDEX index_reviews_on_revtype on reviews (revtype)"
    execute "CREATE INDEX index_reviews_on_status on reviews (status)"
    execute "CREATE INDEX index_suggested_notebooks_on_source_type_and_source_id on suggested_notebooks (source_type, source_id)"
    execute "CREATE INDEX index_votes_on_voter_id_and_voter_type_and_vote_scope on votes (voter_id, voter_type, vote_scope)"
    execute "CREATE INDEX index_votes_on_votable_id_and_votable_type_and_vote_scope on votes(votable_id, votable_type, vote_scope)"
  end
end
