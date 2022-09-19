.class Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;
.super Ljava/lang/Object;
.source "HttpRPCSerivceClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->getCallable(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alibaba/cchannel/rpc/ServiceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

.field final synthetic val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

.field final synthetic val$request:Lcom/alibaba/cchannel/rpc/ServiceRequest;

.field final synthetic val$retryIvalidSid:Z

.field final synthetic val$useCallback:Z


# direct methods
.method constructor <init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->this$0:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    iput-object p2, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->val$request:Lcom/alibaba/cchannel/rpc/ServiceRequest;

    iput-object p3, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    iput-boolean p4, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->val$useCallback:Z

    iput-boolean p5, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->val$retryIvalidSid:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/alibaba/cchannel/rpc/ServiceResponse;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->this$0:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->val$request:Lcom/alibaba/cchannel/rpc/ServiceRequest;

    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    iget-boolean v3, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->val$useCallback:Z

    iget-boolean v4, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->val$retryIvalidSid:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;->access$100(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;ZZ)Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$6;->call()Lcom/alibaba/cchannel/rpc/ServiceResponse;

    move-result-object v0

    return-object v0
.end method
