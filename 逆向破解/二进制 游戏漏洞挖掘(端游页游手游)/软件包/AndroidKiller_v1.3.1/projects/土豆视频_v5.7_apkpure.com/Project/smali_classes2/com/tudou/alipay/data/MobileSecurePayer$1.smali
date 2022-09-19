.class Lcom/tudou/alipay/data/MobileSecurePayer$1;
.super Ljava/lang/Object;
.source "MobileSecurePayer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/alipay/data/MobileSecurePayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/alipay/data/MobileSecurePayer;


# direct methods
.method constructor <init>(Lcom/tudou/alipay/data/MobileSecurePayer;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/alipay/data/MobileSecurePayer$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 46
    const-string v0, "MobileSecurePayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected:ComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",isCancel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/alipay/data/MobileSecurePayer$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {v2}, Lcom/tudou/alipay/data/MobileSecurePayer;->access$000(Lcom/tudou/alipay/data/MobileSecurePayer;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v1, v0, Lcom/tudou/alipay/data/MobileSecurePayer;->lock:Ljava/lang/Integer;

    monitor-enter v1

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    invoke-static {p2}, Lcom/alipay/android/app/IAlixPay$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/app/IAlixPay;

    move-result-object v2

    iput-object v2, v0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 52
    iget-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    iget-object v0, v0, Lcom/tudou/alipay/data/MobileSecurePayer;->lock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 53
    monitor-exit v1

    .line 54
    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 57
    const-string v0, "MobileSecurePayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected:ComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/tudou/alipay/data/MobileSecurePayer$1;->this$0:Lcom/tudou/alipay/data/MobileSecurePayer;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tudou/alipay/data/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    .line 59
    return-void
.end method
