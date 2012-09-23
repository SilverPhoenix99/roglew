module Roglew
	module Kernel32
		extend ::FFI::Library
		ffi_lib 'kernel32'
		ffi_convention :stdcall

		include Win32FFI

    ENCODING = 'W'

		GetModuleHandleExFlag = enum :get_module_handle_ex_flag, [:none, :pin, :unchanged_refcount, :from_address]

		#BOOL GetModuleHandleEx(
		#	__in      DWORD dwFlags,
		#	__in_opt  LPCTSTR lpModuleName,
		#	__out     HMODULE *phModule)
		attach_function :GetModuleHandleEx, :GetModuleHandleExW, [GetModuleHandleExFlag, :string, :pointer], :bool

		attach_function :GetLastError, [], :DWORD

		def self.module_handle(flags = :none, module_name = nil)
			hinstance = nil
			FFI::MemoryPointer.new(:pointer, 1) do |p|
				if GetModuleHandleEx(flags, module_name, p)
					hinstance = p.read_pointer
					hinstance = nil if hinstance.null?
				end
			end
			hinstance
		end
	end
end