module Roglew
  module BaseRenderbufferContext
    def renderbuffer; @obj end

    def storage(width, height, internal_format)
      make_call(context, :renderbuffer_storage, GL::RENDERBUFFER, internal_format, width, height)
    end

    def attachment_parameter(pname)
      make_call(context, :renderbuffer_parameter, GL::RENDERBUFFER, pname)
    end
  end

  class ImmediateRenderbufferContext
    include BaseImmediateContext(BaseRenderbufferContext)
  end

  class DeferredRenderbufferContext
    include BaseDeferredContext(BaseRenderbufferContext, :bind_renderbuffer, GL::RENDERBUFFER)
  end
end