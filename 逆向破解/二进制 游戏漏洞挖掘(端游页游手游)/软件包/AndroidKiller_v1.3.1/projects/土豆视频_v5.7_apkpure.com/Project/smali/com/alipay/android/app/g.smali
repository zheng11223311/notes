.class Lcom/alipay/android/app/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/app/c;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/pay/IAlixPayCallback;

.field final synthetic b:Lcom/alipay/android/app/MspService;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/MspService;Lcom/alipay/android/app/pay/IAlixPayCallback;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alipay/android/app/g;->b:Lcom/alipay/android/app/MspService;

    iput-object p2, p0, Lcom/alipay/android/app/g;->a:Lcom/alipay/android/app/pay/IAlixPayCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/g;->a:Lcom/alipay/android/app/pay/IAlixPayCallback;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/android/app/pay/IAlixPayCallback;->startActivity(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 346
    return-void
.end method
