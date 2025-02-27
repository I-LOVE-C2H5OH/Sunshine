/**
 * @file main.h
 */

// macros
#ifndef SUNSHINE_MAIN_H
#define SUNSHINE_MAIN_H

// standard includes
#include <filesystem>
#include <string_view>

// lib includes
#include <boost/log/common.hpp>

// local includes
#include "thread_pool.h"
#include "thread_safe.h"

extern thread_pool_util::ThreadPool task_pool;
extern bool display_cursor;

extern boost::log::sources::severity_logger<int> verbose;
extern boost::log::sources::severity_logger<int> debug;
extern boost::log::sources::severity_logger<int> info;
extern boost::log::sources::severity_logger<int> warning;
extern boost::log::sources::severity_logger<int> error;
extern boost::log::sources::severity_logger<int> fatal;

// functions
int
main(int argc, char *argv[]);
void
log_flush();
void
open_url(const std::string &url);
void
tray_open_ui_cb(struct tray_menu *item);
void
tray_donate_github_cb(struct tray_menu *item);
void
tray_donate_mee6_cb(struct tray_menu *item);
void
tray_donate_patreon_cb(struct tray_menu *item);
void
tray_donate_paypal_cb(struct tray_menu *item);
void
tray_quit_cb(struct tray_menu *item);
void
print_help(const char *name);
std::string
read_file(const char *path);
int
write_file(const char *path, const std::string_view &contents);
std::uint16_t
map_port(int port);

// namespaces
namespace mail {
#define MAIL(x)                         \
  constexpr auto x = std::string_view { \
    #x                                  \
  }

  extern safe::mail_t man;

  // Global mail
  MAIL(shutdown);
  MAIL(broadcast_shutdown);
  MAIL(video_packets);
  MAIL(audio_packets);
  MAIL(switch_display);

  // Local mail
  MAIL(touch_port);
  MAIL(idr);
  MAIL(rumble);
  MAIL(hdr);
#undef MAIL

}  // namespace mail
#endif  // SUNSHINE_MAIN_H
