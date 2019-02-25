#include <cstdint>
#include <cstdlib>

struct ParityParams {
  void *configuration;
  void (*on_client_restart_cb)(void*, const char*, uintptr_t);
  void *on_client_restart_cb_custom;
};

extern "C" {

void parity_config_destroy(void *cfg);

int parity_config_from_cli(const char *const *args,
                           const uintptr_t *args_lens,
                           uintptr_t len,
                           void **output);

void parity_destroy(void *client);

int parity_rpc(void *client, const char *query, uintptr_t len, char *out_str, uintptr_t *out_len);

int parity_rpc_ios_query(void *client,
                         const char *query,
                         char **reply_bytes,
                         uintptr_t *reply_length);

void parity_rpc_ios_release(char *reply);

void parity_set_panic_hook(void (*callback)(void*, const char*, uintptr_t), void *param);

int parity_start(const ParityParams *cfg, void **output);

int parity_start_ios(void **output, const char *args);

} // extern "C"
