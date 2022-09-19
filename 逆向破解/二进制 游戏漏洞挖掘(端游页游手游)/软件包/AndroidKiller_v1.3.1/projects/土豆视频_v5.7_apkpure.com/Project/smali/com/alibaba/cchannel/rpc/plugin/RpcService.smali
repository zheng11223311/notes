.class public interface abstract Lcom/alibaba/cchannel/rpc/plugin/RpcService;
.super Ljava/lang/Object;
.source "RpcService.java"


# virtual methods
.method public abstract call(Lcom/alibaba/cchannel/rpc/ServiceRequest;)Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/cchannel/rpc/ServiceInvokeException;
        }
    .end annotation
.end method

.method public abstract call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
.end method
