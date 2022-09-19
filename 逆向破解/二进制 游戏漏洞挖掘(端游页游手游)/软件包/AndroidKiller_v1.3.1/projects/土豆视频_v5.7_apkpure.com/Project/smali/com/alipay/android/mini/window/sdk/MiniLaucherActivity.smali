.class public Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a:Z

    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 66
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 67
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v0, "order_info"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    :cond_0
    new-instance v1, Lcom/alipay/android/app/pay/PayTask;

    new-instance v2, Lcom/alipay/android/mini/window/sdk/ac;

    invoke-direct {v2, p0}, Lcom/alipay/android/mini/window/sdk/ac;-><init>(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/alipay/android/app/pay/PayTask;-><init>(Landroid/app/Activity;Lcom/alipay/android/app/pay/PayTask$OnPayListener;)V

    .line 125
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/pay/PayTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 129
    :goto_1
    return-void

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->finish()V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;Z)Z
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a:Z

    return p1
.end method


# virtual methods
.method public finish()V
    .locals 4

    .prologue
    .line 51
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 53
    iget-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a:Z

    if-nez v0, :cond_0

    .line 54
    const/16 v0, 0x1771

    invoke-static {v0}, Lcom/alipay/android/app/j;->b(I)Lcom/alipay/android/app/j;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.alipay.android.app.pay.ACTION_PAY_FAILED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string/jumbo v2, "resultStatus"

    invoke-virtual {v0}, Lcom/alipay/android/app/j;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v2, "memo"

    invoke-virtual {v0}, Lcom/alipay/android/app/j;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string/jumbo v0, "result"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->setResult(ILandroid/content/Intent;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh/b;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 37
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a(Landroid/content/Intent;)V

    .line 41
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/alipay/android/mini/window/sdk/MiniLaucherActivity;->a(Landroid/content/Intent;)V

    .line 47
    return-void
.end method
