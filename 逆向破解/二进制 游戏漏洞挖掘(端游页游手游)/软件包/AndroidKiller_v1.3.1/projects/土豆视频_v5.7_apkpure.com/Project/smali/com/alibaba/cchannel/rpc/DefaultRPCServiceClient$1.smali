.class Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;
.super Ljava/lang/Object;
.source "DefaultRPCServiceClient.java"

# interfaces
.implements Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

.field final synthetic val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

.field final synthetic val$request:Lcom/alibaba/cchannel/rpc/ServiceRequest;


# direct methods
.method constructor <init>(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    iput-object p2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$request:Lcom/alibaba/cchannel/rpc/ServiceRequest;

    iput-object p3, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public networkException()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-interface {v0}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->networkException()V

    .line 106
    return-void
.end method

.method public onFailed(Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V
    .locals 8
    .param p1, "e"    # Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    .prologue
    .line 81
    sget-object v1, Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;->INVALID_SID:Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;

    invoke-virtual {p1}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;->getExceptionType()Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException$ServiceInvokeExceptionType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    const-string v2, "code"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 84
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    const-string v2, "cost_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v3}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$100(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 85
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V

    .line 87
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$request:Lcom/alibaba/cchannel/rpc/ServiceRequest;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->assembleSid(Lcom/alibaba/cchannel/rpc/ServiceRequest;Z)V

    .line 88
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$200(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/cchannel/rpc/RPCServiceClient;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$request:Lcom/alibaba/cchannel/rpc/ServiceRequest;

    iget-object v3, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-interface {v1, v2, v3}, Lcom/alibaba/cchannel/rpc/RPCServiceClient;->call(Lcom/alibaba/cchannel/rpc/ServiceRequest;Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    const-string v2, "code"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 91
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    const-string v2, "cost_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v3}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$100(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 92
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V

    .line 93
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    new-instance v2, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;

    invoke-direct {v2, v0}, Lcom/alibaba/cchannel/rpc/ServiceInvokeException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->onFailed(Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V

    goto :goto_0

    .line 96
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    const-string v2, "code"

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 97
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    const-string v2, "cost_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v3}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$100(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 98
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v1}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->failed()V

    .line 99
    iget-object v1, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-interface {v1, p1}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->onFailed(Lcom/alibaba/cchannel/rpc/ServiceInvokeException;)V

    goto :goto_0
.end method

.method public onSuccess(Lcom/alibaba/cchannel/rpc/ServiceResponse;)V
    .locals 6
    .param p1, "response"    # Lcom/alibaba/cchannel/rpc/ServiceResponse;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    const-string/jumbo v1, "req_size"

    iget-object v2, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$request:Lcom/alibaba/cchannel/rpc/ServiceRequest;

    iget-object v2, v2, Lcom/alibaba/cchannel/rpc/ServiceRequest;->payload:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 72
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    const-string/jumbo v1, "res_size"

    iget-object v2, p1, Lcom/alibaba/cchannel/rpc/ServiceResponse;->payload:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 73
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    const-string v1, "code"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 74
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    const-string v1, "cost_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v4}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$100(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->info(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    .line 75
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->this$0:Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;

    invoke-static {v0}, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;->access$000(Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient;)Lcom/alibaba/sdk/android/trace/ActionTraceLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/trace/ActionTraceLogger;->success()V

    .line 76
    iget-object v0, p0, Lcom/alibaba/cchannel/rpc/DefaultRPCServiceClient$1;->val$callback:Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/cchannel/rpc/ServiceRequestCallback;->onSuccess(Lcom/alibaba/cchannel/rpc/ServiceResponse;)V

    .line 77
    return-void
.end method
