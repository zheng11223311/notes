.class Lcom/tudou/alipay/data/MobileSecurePayer$2;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/alipay/data/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

.field final synthetic val$callback:Landroid/os/Handler;

.field final synthetic val$myWhat:I

.field final synthetic val$strOrderInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/data/MobileSecurePayer;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iput-object p2, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$strOrderInfo:Ljava/lang/String;

    iput p3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$myWhat:I

    iput-object p4, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 107
    const/4 v2, 0x0

    .line 109
    .local v2, "strRet":Ljava/lang/String;
    :try_start_0
    const-string v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.run.start:mAlixPay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v5, v5, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    if-eqz v3, :cond_1

    .line 141
    const-string v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.finally:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v5}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$200(Lcom/tudou/alipay/data/MobileSecurePayer;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .local v1, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 155
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v4, v3, Lcom/tudou/alipay/data/MobileSecurePayer;->lock:Ljava/lang/Integer;

    monitor-enter v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :try_start_2
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v3, v3, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    if-nez v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v3, v3, Lcom/tudou/alipay/data/MobileSecurePayer;->lock:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 122
    :cond_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    :try_start_3
    const-string v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.run.after_wait():mAlixPay:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v5, v5, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v3

    if-eqz v3, :cond_3

    .line 141
    const-string v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.finally:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v5}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$200(Lcom/tudou/alipay/data/MobileSecurePayer;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    iget v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 122
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    const-string v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 141
    const-string v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.finally:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v5}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$200(Lcom/tudou/alipay/data/MobileSecurePayer;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    iget v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 129
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_3
    :try_start_7
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v3, v3, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v4}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$100(Lcom/tudou/alipay/data/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    .line 133
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v3, v3, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$strOrderInfo:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    const-string v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.run.end:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v5}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",strRet:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 141
    const-string v3, "MobileSecurePayer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread.finally:isCancel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v5}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v3}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$200(Lcom/tudou/alipay/data/MobileSecurePayer;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    iget v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$myWhat:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v3, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 141
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v3

    const-string v4, "MobileSecurePayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Thread.finally:isCancel:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v6}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v4}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 145
    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v4}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$200(Lcom/tudou/alipay/data/MobileSecurePayer;)V

    .line 149
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 150
    .restart local v1    # "msg":Landroid/os/Message;
    iget v4, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$myWhat:I

    iput v4, v1, Landroid/os/Message;->what:I

    .line 151
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 152
    iget-object v4, p0, Lcom/tudou/alipay/data/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 153
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    throw v3
.end method
