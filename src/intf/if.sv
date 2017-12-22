// NOTE: minimum implementation

/*** IF (Instruction Fetch) Signals ***/
interface intf_if();
  wire  Stall;
  wire  Flush;
  wire  ExceptionFlush;  // from CP0. only IF stage has two flush wires, Flush and ExceptionFlush

  // IF - ID
  logic [31:0] Instruction;
  logic [31:0] PCAdd4;

  // internal wire
  logic [31:0] PCSrcOut;
  logic [31:0] PCOut;

  // ifid_stage
  modport ifid_in(
    input  Flush,
    input  ExceptionFlush,
    input  Stall,

    // Control Signals
    input  Instruction,
    // Data Signals
    input  PCAdd4
  );
endinterface
