using System;

public class data_viewer {
    public static void write_ushort_le(byte[] buf, int offset, ushort value) { 
        // value ---> byte[];
        byte[] byte_value = BitConverter.GetBytes(value);
        // 小尾，还是大尾？BitConvert 系统是小尾还是大尾;
        if (!BitConverter.IsLittleEndian) {
            Array.Reverse(byte_value);
        }

        Array.Copy(byte_value, 0, buf, offset, byte_value.Length);
    }

    public static void write_uint_le(byte[] buf, int offset, uint value) {
        // value ---> byte[];
        byte[] byte_value = BitConverter.GetBytes(value);
        // 小尾，还是大尾？BitConvert 系统是小尾还是大尾;
        if (!BitConverter.IsLittleEndian)
        {
            Array.Reverse(byte_value);
        }

        Array.Copy(byte_value, 0, buf, offset, byte_value.Length);
    }

    public static void write_bytes(byte[] dst, int offset, byte[] value) {
        Array.Copy(value, 0, dst, offset, value.Length);
    }

    public static ushort read_ushort_le(byte[] data, int offset) {
        int ret = (data[offset] | (data[offset + 1] << 8));

        return (ushort)ret;
    }
}
