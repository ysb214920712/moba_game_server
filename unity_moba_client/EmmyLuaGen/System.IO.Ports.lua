---@class System.IO.Ports.Handshake : System.Enum
System.IO.Ports.Handshake = {}
---@type System.IO.Ports.Handshake
CS.System.IO.Ports.Handshake = System.IO.Ports.Handshake

---@return System.Int32 value:0
System.IO.Ports.Handshake.None = 0
---@return System.Int32 value:1
System.IO.Ports.Handshake.XOnXOff = 1
---@return System.Int32 value:2
System.IO.Ports.Handshake.RequestToSend = 2
---@return System.Int32 value:3
System.IO.Ports.Handshake.RequestToSendXOnXOff = 3

---@class System.IO.Ports.Parity : System.Enum
System.IO.Ports.Parity = {}
---@type System.IO.Ports.Parity
CS.System.IO.Ports.Parity = System.IO.Ports.Parity

---@return System.Int32 value:0
System.IO.Ports.Parity.None = 0
---@return System.Int32 value:1
System.IO.Ports.Parity.Odd = 1
---@return System.Int32 value:2
System.IO.Ports.Parity.Even = 2
---@return System.Int32 value:3
System.IO.Ports.Parity.Mark = 3
---@return System.Int32 value:4
System.IO.Ports.Parity.Space = 4

---@class System.IO.Ports.SerialData : System.Enum
System.IO.Ports.SerialData = {}
---@type System.IO.Ports.SerialData
CS.System.IO.Ports.SerialData = System.IO.Ports.SerialData

---@return System.Int32 value:1
System.IO.Ports.SerialData.Chars = 1

---@class System.IO.Ports.SerialError : System.Enum
System.IO.Ports.SerialError = {}
---@type System.IO.Ports.SerialError
CS.System.IO.Ports.SerialError = System.IO.Ports.SerialError

---@return System.Int32 value:1
System.IO.Ports.SerialError.RXOver = 1
---@return System.Int32 value:2
System.IO.Ports.SerialError.Overrun = 2
---@return System.Int32 value:4
System.IO.Ports.SerialError.RXParity = 4

---@class System.IO.Ports.SerialErrorReceivedEventArgs : System.EventArgs
---@field public EventType System.IO.Ports.SerialError @  getter
System.IO.Ports.SerialErrorReceivedEventArgs = {}
---@type System.IO.Ports.SerialErrorReceivedEventArgs
CS.System.IO.Ports.SerialErrorReceivedEventArgs = System.IO.Ports.SerialErrorReceivedEventArgs

---@class System.IO.Ports.SerialPinChange : System.Enum
System.IO.Ports.SerialPinChange = {}
---@type System.IO.Ports.SerialPinChange
CS.System.IO.Ports.SerialPinChange = System.IO.Ports.SerialPinChange


---@class System.IO.Ports.SerialPinChangedEventArgs : System.EventArgs
---@field public EventType System.IO.Ports.SerialPinChange @  getter
System.IO.Ports.SerialPinChangedEventArgs = {}
---@type System.IO.Ports.SerialPinChangedEventArgs
CS.System.IO.Ports.SerialPinChangedEventArgs = System.IO.Ports.SerialPinChangedEventArgs

---@class System.IO.Ports.SerialPort : System.ComponentModel.Component
---@field public BaseStream System.IO.Stream @  getter
---@field public BaudRate System.Int32 @ setter getter
---@field public BreakState System.Boolean @ setter getter
---@field public BytesToRead System.Int32 @  getter
---@field public BytesToWrite System.Int32 @  getter
---@field public CDHolding System.Boolean @  getter
---@field public CtsHolding System.Boolean @  getter
---@field public DataBits System.Int32 @ setter getter
---@field public DiscardNull System.Boolean @ setter getter
---@field public DsrHolding System.Boolean @  getter
---@field public DtrEnable System.Boolean @ setter getter
---@field public Encoding System.Text.Encoding @ setter getter
---@field public Handshake System.IO.Ports.Handshake @ setter getter
---@field public IsOpen System.Boolean @  getter
---@field public NewLine System.String @ setter getter
---@field public Parity System.IO.Ports.Parity @ setter getter
---@field public ParityReplace System.Byte @ setter getter
---@field public PortName System.String @ setter getter
---@field public ReadBufferSize System.Int32 @ setter getter
---@field public ReadTimeout System.Int32 @ setter getter
---@field public ReceivedBytesThreshold System.Int32 @ setter getter
---@field public RtsEnable System.Boolean @ setter getter
---@field public StopBits System.IO.Ports.StopBits @ setter getter
---@field public WriteBufferSize System.Int32 @ setter getter
---@field public WriteTimeout System.Int32 @ setter getter
---@field public InfiniteTimeout System.Int32
System.IO.Ports.SerialPort = {}
---@type System.IO.Ports.SerialPort
CS.System.IO.Ports.SerialPort = System.IO.Ports.SerialPort

---@return System.Void
function System.IO.Ports.SerialPort:Close()end
---@return System.Void
function System.IO.Ports.SerialPort:DiscardInBuffer()end
---@return System.Void
function System.IO.Ports.SerialPort:DiscardOutBuffer()end
---@return System.String[]
function System.IO.Ports.SerialPort.GetPortNames()end
---@return System.Void
function System.IO.Ports.SerialPort:Open()end
---@overload fun(buffer:System.Char[], offset:System.Int32, count:System.Int32):System.Int32
---@param buffer System.Byte[]
---@param offset System.Int32
---@param count System.Int32
---@return System.Int32
function System.IO.Ports.SerialPort:Read(buffer, offset, count)end
---@return System.Int32
function System.IO.Ports.SerialPort:ReadByte()end
---@return System.Int32
function System.IO.Ports.SerialPort:ReadChar()end
---@return System.String
function System.IO.Ports.SerialPort:ReadExisting()end
---@return System.String
function System.IO.Ports.SerialPort:ReadLine()end
---@param value System.String
---@return System.String
function System.IO.Ports.SerialPort:ReadTo(value)end
---@overload fun(buffer:System.Byte[], offset:System.Int32, count:System.Int32):System.Void
---@overload fun(buffer:System.Char[], offset:System.Int32, count:System.Int32):System.Void
---@param text System.String
---@return System.Void
function System.IO.Ports.SerialPort:Write(text)end
---@param text System.String
---@return System.Void
function System.IO.Ports.SerialPort:WriteLine(text)end
---@param value System.IO.Ports.SerialErrorReceivedEventHandler
---@return System.Void
function System.IO.Ports.SerialPort:add_ErrorReceived(value)end
---@param value System.IO.Ports.SerialErrorReceivedEventHandler
---@return System.Void
function System.IO.Ports.SerialPort:remove_ErrorReceived(value)end
---@param value System.IO.Ports.SerialPinChangedEventHandler
---@return System.Void
function System.IO.Ports.SerialPort:add_PinChanged(value)end
---@param value System.IO.Ports.SerialPinChangedEventHandler
---@return System.Void
function System.IO.Ports.SerialPort:remove_PinChanged(value)end
---@param value System.IO.Ports.SerialDataReceivedEventHandler
---@return System.Void
function System.IO.Ports.SerialPort:add_DataReceived(value)end
---@param value System.IO.Ports.SerialDataReceivedEventHandler
---@return System.Void
function System.IO.Ports.SerialPort:remove_DataReceived(value)end
---@class System.IO.Ports.SerialDataReceivedEventArgs : System.EventArgs
---@field public EventType System.IO.Ports.SerialData @  getter
System.IO.Ports.SerialDataReceivedEventArgs = {}
---@type System.IO.Ports.SerialDataReceivedEventArgs
CS.System.IO.Ports.SerialDataReceivedEventArgs = System.IO.Ports.SerialDataReceivedEventArgs

---@class System.IO.Ports.StopBits : System.Enum
System.IO.Ports.StopBits = {}
---@type System.IO.Ports.StopBits
CS.System.IO.Ports.StopBits = System.IO.Ports.StopBits

---@return System.Int32 value:0
System.IO.Ports.StopBits.None = 0
---@return System.Int32 value:1
System.IO.Ports.StopBits.One = 1
---@return System.Int32 value:2
System.IO.Ports.StopBits.Two = 2
---@return System.Int32 value:3
System.IO.Ports.StopBits.OnePointFive = 3

