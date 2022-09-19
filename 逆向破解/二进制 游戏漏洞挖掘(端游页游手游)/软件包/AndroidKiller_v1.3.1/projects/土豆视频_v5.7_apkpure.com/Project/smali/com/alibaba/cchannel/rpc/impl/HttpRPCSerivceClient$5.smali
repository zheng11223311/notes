.class Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$5;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$5;->this$0:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    iput-object p2, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$5;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    iput-object p3, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$5;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$5;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    new-instance v1, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$5;->val$e:Ljava/lang/Exception;

    invoke-direct {v1, v2}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->onFailed(Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V

    .line 166
    return-void
.end method
