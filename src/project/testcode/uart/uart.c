typedef unsigned long long int size_t;
unsigned char* UART_BASE = (unsigned char*)0x10000000L;
const size_t UART_DATA_OFFSET = 0;
const size_t UART_STATE_OFFSET = 1;
const unsigned char TX_MASK = 0b10;
const unsigned char RX_MASK = 0b01;

char uart_rx(){
    // fill your code
}

void uart_tx(unsigned char c){
    // fill your code
}