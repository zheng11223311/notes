.class public Lcom/alipay/android/app/MspService$a;
.super Lcom/alipay/android/app/pay/IAlixPay$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/MspService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/android/app/MspService;

.field private b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/MspService;)V
    .locals 1

    .prologue
    .line 360
    iput-object p1, p0, Lcom/alipay/android/app/MspService$a;->a:Lcom/alipay/android/app/MspService;

    invoke-direct {p0}, Lcom/alipay/android/app/pay/IAlixPay$Stub;-><init>()V

    .line 361
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/MspService$a;->b:Ljava/lang/ref/WeakReference;

    .line 362
    return-void
.end method


# virtual methods
.method public checkAccountIfExist()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;)Z

    move-result v0

    return v0
.end method

.method public loadTID()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0}, Lcom/alipay/android/app/MspService;->b(Lcom/alipay/android/app/MspService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public manager(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0, p1}, Lcom/alipay/android/app/MspService;->c(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public pay(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0, p1}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public payWithURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0, p1}, Lcom/alipay/android/app/MspService;->b(Lcom/alipay/android/app/MspService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0, p1}, Lcom/alipay/android/app/MspService;->a(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    .line 383
    return-void
.end method

.method public unregisterCallback(Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/alipay/android/app/MspService$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/MspService;

    invoke-static {v0, p1}, Lcom/alipay/android/app/MspService;->b(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/pay/IAlixPayCallback;)V

    .line 389
    return-void
.end method
