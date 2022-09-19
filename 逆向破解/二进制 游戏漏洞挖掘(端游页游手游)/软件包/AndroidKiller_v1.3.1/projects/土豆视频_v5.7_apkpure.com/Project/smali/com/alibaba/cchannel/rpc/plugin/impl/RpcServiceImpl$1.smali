.class Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;
.super Ljava/lang/Object;
.source "RpcServiceImpl.java"

# interfaces
.implements Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;

.field final synthetic val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;


# direct methods
.method constructor <init>(Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;->this$0:Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl;

    iput-object p2, p0, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkException()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-interface {v0}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->networkException()V

    .line 39
    return-void
.end method

.method public onFailed(Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V
    .locals 1
    .param p1, "exception"    # Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->onFailed(Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V

    .line 34
    return-void
.end method

.method public onSuccess(Lcom/alibaba/cchannel/rpc/ServiceResponse;)V
    .locals 1
    .param p1, "response"    # Lcom/alibaba/cchannel/rpc/ServiceResponse;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/plugin/impl/RpcServiceImpl$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->onSuccess(Lcom/alibaba/cchannel/rpc/ServiceResponse;)V

    .line 29
    :cond_0
    return-void
.end method
