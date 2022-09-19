.class Lcom/alipay/android/mini/window/sdk/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/app/pay/PayTask$a;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.android.app.pay.ACTION_PAY_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "memo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    const-string v1, "openTime"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const-string v1, "netError"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;Z)Z

    .line 99
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-virtual {v1}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->finish()V

    .line 100
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-virtual {v1}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 102
    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alipay.android.app.pay.ACTION_PAY_FAILED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    const-string/jumbo v1, "resultStatus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "memo"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    const-string v1, "openTime"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :cond_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 116
    const-string v1, "netError"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    .line 119
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;Z)Z

    .line 120
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-virtual {v1}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->finish()V

    .line 121
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ac;->a:Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;

    invoke-virtual {v1}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 123
    return-void
.end method

.method public onPayFailed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method

.method public onPaySuccess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    return-void
.end method
