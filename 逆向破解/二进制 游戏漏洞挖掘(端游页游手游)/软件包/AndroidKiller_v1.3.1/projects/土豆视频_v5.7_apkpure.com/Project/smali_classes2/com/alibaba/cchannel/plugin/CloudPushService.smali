.class public interface abstract Lcom/alibaba/cchannel/plugin/CloudPushService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract addTag(Ljava/lang/String;Lcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addTag(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Lcom/alibaba/cchannel/core/task/RunnableException;
        }
    .end annotation
.end method

.method public abstract bindAccount(Ljava/lang/String;)V
.end method

.method public abstract bindAccount(Ljava/lang/String;Lcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getDeviceID()Ljava/lang/String;
.end method

.method public abstract getTcpServiceClient()Lcom/alibaba/cchannel/rpc/RPCServiceClient;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isReadyForCommunicate()Z
.end method

.method public abstract logout()V
.end method

.method public abstract onAppStart()V
.end method

.method public abstract register(Landroid/content/Context;)V
.end method

.method public abstract register(Landroid/content/Context;Lcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeTag(Ljava/lang/String;Lcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract report(JBZLcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JBZ",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract report(JZB)V
.end method

.method public abstract setAcceptTime(IIII)V
.end method

.method public abstract setAcceptTime(IIIILcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unbindAccount()V
.end method

.method public abstract unbindAccount(Lcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unregister()V
.end method

.method public abstract unregister(Lcom/alibaba/cchannel/core/task/RunnableCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/cchannel/core/task/RunnableCallback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateSID(Ljava/lang/String;)V
.end method
