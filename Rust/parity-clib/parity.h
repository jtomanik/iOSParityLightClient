// Copyright 2018 Parity Technologies (UK) Ltd.
// This file is part of Parity.

// Parity is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// Parity is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with Parity.  If not, see <http://www.gnu.org/licenses/>.

#ifndef _PARITY_H_INCLUDED_
#define _PARITY_H_INCLUDED_

#include <stddef.h>
#include <cstdint>
#include <cstdlib>

using LoggingCallback = void(*)(void*, const char*, uintptr_t);

// generated using `cbindgen -o parity.h`

#ifdef __cplusplus
extern "C" {
#endif

void parity_destroy(void *client);

int parity_logger_start(void *owner, LoggingCallback callback);

int parity_rpc_ios_query(void *client,
						 const char *query,
						 char **reply_bytes,
						 uintptr_t *reply_length);

void parity_rpc_ios_release(char *reply);

void parity_set_panic_hook(void *owner, LoggingCallback callback);

int parity_start_ios(void **output, const char *args);

#ifdef __cplusplus
}
#endif

#endif // include guard
