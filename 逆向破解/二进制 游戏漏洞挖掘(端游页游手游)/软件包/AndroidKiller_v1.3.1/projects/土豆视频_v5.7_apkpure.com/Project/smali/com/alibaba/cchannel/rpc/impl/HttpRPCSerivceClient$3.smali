.class Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$3;
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


# direct methods
.method constructor <init>(Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$3;->this$0:Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient;

    iput-object p2, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$3;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/impl/HttpRPCSerivceClient$3;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-interface {v0}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->networkException()V

    .line 133
    return-void
.end method
