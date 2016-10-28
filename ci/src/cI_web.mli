type config

val serve :
  config:config ->
  logs:CI_live_log.manager ->
  mode:Conduit_lwt_unix.server ->
  ci:CI_engine.t ->
  auth:CI_web_utils.Auth.t ->
  dashboards:CI_target.ID_Set.t CI_projectID.Map.t ->
  unit Lwt.t
(** [server ~config ~logs ~mode ~ci ~auth ~dashboards] runs a web-server providing a UI to [ci],
    listening at [mode] and showing summary [dashboards]. *)

val opts : config Cmdliner.Term.t
