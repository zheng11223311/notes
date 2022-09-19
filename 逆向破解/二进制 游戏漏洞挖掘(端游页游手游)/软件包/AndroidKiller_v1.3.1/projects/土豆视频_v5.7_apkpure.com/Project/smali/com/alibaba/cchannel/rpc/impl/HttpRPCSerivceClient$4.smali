.class Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$4;
.super Ljava/lang/Object;
.source "HttpRPCSerivceClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->internalCall(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Lcom/alibaba/cchannel/rpc/ServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

.field final synthetic val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

.field final synthetic val$e:Lcom/alibaba/cchannel/rpc/ServiceInvokeException;


# direct methods
.method constructor <init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$4;->this$0:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    iput-object p2, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$4;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    iput-object p3, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$4;->val$e:Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$4;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$4;->val$e:Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    invoke-interface {v0, v1}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->onFailed(Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V

    .line 152
    return-void
.end method
