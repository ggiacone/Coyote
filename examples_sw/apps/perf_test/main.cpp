
// 1. Allocate Coyote Thread
// 2. Allocate through getMem() 3 Locations X,W,Y
// 3. Put values into X,W,Y
// 4. Create sg_entry.sync for LOCAL_OFFLOAD and wait until it is done!
// 5. set Registers setCSR() (only start not) and wait until it is completed
// 6. set start signal
// 7. wait until done_signal using getCSR
// 8. Read out Y 
// 9  free Memory

#include <any>

// Coyote-specific includes
#include "cThread.hpp"

// Default vFPGA to assign cThreads to
#define DEFAULT_VFPGA_ID 0

// Registers for axi_ctrl
#define START 0x00
#define DONE 0x08
#define ADDR_X 0x10
#define ADDR_W 0x18
#define ADDR_Y 0x20



int main(int argc, char *argv[]){

// Size for allocating Memory
u_int number_elem = 10;
u_int size = number_elem * (uint) sizeof(uint16_t);

// Create a Coyote thread and allocate memory for the vectors
std::unique_ptr<coyote::cThread<std::any>> coyote_thread(new coyote::cThread<std::any>(DEFAULT_VFPGA_ID, getpid(), 0));
uint16_t *X = (uint16_t *)coyote_thread->getMem({coyote::CoyoteAlloc::HPF, number_elem});
uint16_t *W = (uint16_t *) coyote_thread->getMem({coyote::CoyoteAlloc::HPF, number_elem});
uint16_t *Y = (uint16_t *)coyote_thread->getMem({coyote::CoyoteAlloc::HPF, number_elem});
if(!X || !W || !Y){ throw std::runtime_error("Could not allocate memory; exiting...");}


// Initialise the input vectors and zero-out output
for (size_t i = 0; i < 10; i++)
{
    X[i] = 1;
    W[i] = i;
    Y[i] = 0;
}

// Create sg_entries
 coyote::sgEntry sg_offload_X;
 coyote::sgEntry sg_offload_W;
 coyote::sgEntry sg_Y;


// LOCAL_OFFLOAD
sg_offload_X.sync = {.addr = X .size = size };
sg_offload_W.sync = {.addr = W .size = size };

coyote_thread->invoke(coyote::CoyoteOper::LOCAL_OFFLOAD,  &sg_offload_X);
coyote_thread->invoke(coyote::CoyoteOper::LOCAL_OFFLOAD,  &sg_offload_W);

// Wait until transfer is done
while (coyote_thread->checkCompleted(coyote::CoyoteOper::LOCAL_OFFLOAD) != 2) {}

// Set registers
std::cout << "Setting CSR: ADDR_X = " << ADDR_X << ", Value = " << X << std::endl;
coyote_thread->setCSR(X,ADDR_X)
std::cout << "Setting CSR: ADDR_W = " << ADDR_W << ", Value = " << W << std::endl;
coyote_thread->setCSR(W,ADDR_W)
std::cout << "Setting CSR: ADDR_Y = " << ADDR_Y << ", Value = " << Y << std::endl;
coyote_thread->setCSR(Y,ADDR_Y)
std::cout << "Starting kernel: START = " << START << ", Value = " << 1 << std::endl;
coyote_thread->setCSR(1,START)

// wait until Done
while (coyote_thread->getCSR(DONE) != 1) {}

std::cout << "Done Signal is high" << std::endl

// LOCAL_SYNC
sg_Y.sync = {.addr = Y .size = size };
coyote_thread->invoke(coyote::CoyoteOper::LOCAL_SYNC,  &sg_Y);
// wait until done
while(coyote_thread->checkCompleted(coyote::CoyoteOper::LOCAL_SYNC) != 1 ){}

// Read out Y-Vector
for (size_t i = 0; i < 10; i++)
{
    std::cout << "Y[" << i << "] = " << Y[i] << std::endl;
}


return EXIT_SUCCESS
}
