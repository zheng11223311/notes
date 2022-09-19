.class public Lcom/alipay/android/mini/window/sdk/BaseActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String; = "CallingPid"


# instance fields
.field public a_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 106
    const-string v0, "CallingPid"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    .line 108
    :try_start_0
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "no biz id"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->finish()V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    :try_start_1
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    invoke-virtual {v0, v1}, Lb/b;->b(I)Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->j()Lo/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/d;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 23
    if-eqz p1, :cond_1

    .line 25
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    if-nez v0, :cond_0

    .line 26
    const-string v0, "CallingPid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    .line 29
    :cond_0
    :try_start_0
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    invoke-virtual {v0, v1}, Lb/b;->b(I)Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->finish()V

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Ls/b;->c()Ls/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    invoke-static {}, Ls/b;->c()Ls/b;

    move-result-object v0

    invoke-virtual {v0}, Ls/b;->a()V

    .line 83
    :cond_0
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    invoke-virtual {v0, v1}, Lb/b;->b(I)Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->l()Z

    .line 85
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    invoke-virtual {v0, v1}, Lb/b;->d(I)V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 91
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    invoke-static {v0}, Lj/h;->a(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->finish()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a(Landroid/content/Intent;)V

    .line 103
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 47
    :try_start_0
    invoke-static {}, Lb/b;->a()Lb/b;

    move-result-object v0

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    invoke-virtual {v0, v1}, Lb/b;->b(I)Lb/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a;->c()Lb/g;

    move-result-object v0

    invoke-virtual {v0}, Lb/g;->a()V
    :try_end_0
    .catch Lcom/alipay/android/app/exception/AppErrorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "setFinishOnTouchOutside"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :cond_0
    :goto_1
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    invoke-virtual {v0}, Lcom/alipay/android/app/exception/AppErrorException;->printStackTrace()V

    goto :goto_0

    .line 61
    :catch_1
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj/h;->e(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 95
    const-string v0, "CallingPid"

    iget v1, p0, Lcom/alipay/android/mini/window/sdk/BaseActivity;->a_:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 75
    return-void
.end method
