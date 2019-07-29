// Send an argument of a given size in bytes to the specified core, with a 
// given communication ID. Context here is the device.
extern void send_argument(void *value, int32_t size, int32_t to_core,
    int32_t addr, void *context);

// Receive a return value back to the host. Context here is the device.
extern void receive_return(void *value, int32_t size, void *context);