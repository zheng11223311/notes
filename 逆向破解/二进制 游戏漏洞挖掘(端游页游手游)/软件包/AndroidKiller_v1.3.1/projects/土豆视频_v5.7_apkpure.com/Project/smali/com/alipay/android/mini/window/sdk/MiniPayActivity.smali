.class public Lcom/alipay/android/mini/window/sdk/MiniPayActivity;
.super Lcom/alipay/android/mini/window/sdk/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/alipay/android/mini/window/sdk/j;


# static fields
.field private static final g:I = -0x1

.field private static final h:Ljava/lang/String; = "cardNumber"


# instance fields
.field private b:Ljava/lang/ref/WeakReference;

.field private c:Lcom/alipay/android/mini/widget/o;

.field private d:Landroid/app/Dialog;

.field private e:Landroid/app/Dialog;

.field private f:Lcom/alipay/android/mini/window/sdk/az;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->e:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Lcom/alipay/android/mini/widget/o;)Lcom/alipay/android/mini/widget/o;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/o;

    return-object p1
.end method

.method static synthetic a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c()V

    return-void
.end method

.method static synthetic b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/o;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a()V

    .line 256
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 259
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/o;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/o;

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/o;->dismiss()V

    .line 188
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/o;

    .line 190
    return-void
.end method

.method public a(Landroid/content/Intent;Lcom/alipay/android/mini/window/sdk/az;)V
    .locals 1

    .prologue
    .line 269
    if-eqz p2, :cond_0

    .line 270
    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->f:Lcom/alipay/android/mini/window/sdk/az;

    .line 271
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/mini/window/sdk/k;Lb/l;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alipay/android/app/exception/AppErrorException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 85
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const-string v0, "mini_layout"

    invoke-static {v0}, Lj/i;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 88
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 89
    invoke-virtual {p1, p0, v0}, Lcom/alipay/android/mini/window/sdk/k;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 90
    const/4 v1, 0x6

    if-eq p3, v1, :cond_0

    const/4 v1, 0x7

    if-eq p3, v1, :cond_0

    const/16 v1, 0xa

    if-eq p3, v1, :cond_0

    const/16 v1, -0xa

    if-eq p3, v1, :cond_0

    .line 94
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 95
    invoke-static {p0, v3}, Lcom/alipay/android/mini/util/n;->a(Landroid/app/Activity;I)V

    .line 98
    invoke-static {}, Lcom/alipay/android/mini/util/h;->b()V

    .line 99
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 100
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c()V

    .line 103
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    .line 205
    new-instance v0, Lcom/alipay/android/mini/window/sdk/ah;

    invoke-direct {v0, p0, p0, p1}, Lcom/alipay/android/mini/window/sdk/ah;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lr/a;Ljava/lang/String;[Lr/a;)V
    .locals 8

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/alipay/android/mini/window/sdk/ad;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p6

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/alipay/android/mini/window/sdk/ad;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Ljava/lang/String;[Lr/a;[Lr/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    :goto_0
    return-void

    .line 292
    :cond_0
    new-instance v0, Lcom/alipay/android/mini/window/sdk/ai;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alipay/android/mini/window/sdk/ai;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lr/i;)V
    .locals 1

    .prologue
    .line 219
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    .line 220
    return-void
.end method

.method public varargs a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Lcom/alipay/android/mini/window/sdk/ag;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/mini/window/sdk/ag;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;[Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a([Lr/a;)V
    .locals 5

    .prologue
    .line 262
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 263
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/i;

    new-instance v4, Lr/c;

    invoke-direct {v4, v3}, Lr/c;-><init>(Lr/a;)V

    invoke-interface {v0, p0, v4}, Lr/i;->a(Ljava/lang/Object;Ld/b;)Z

    .line 262
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 265
    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c:Lcom/alipay/android/mini/widget/o;

    if-eqz v0, :cond_0

    .line 306
    new-instance v0, Lcom/alipay/android/mini/window/sdk/aj;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/mini/window/sdk/aj;-><init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 224
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->finish()V

    .line 225
    sput v0, Lcom/alipay/android/mini/util/n;->f:I

    .line 226
    sput v0, Lcom/alipay/android/mini/util/n;->e:I

    .line 227
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 76
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->f:Lcom/alipay/android/mini/window/sdk/az;

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "cardNumber"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->f:Lcom/alipay/android/mini/window/sdk/az;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-interface {v1, v2}, Lcom/alipay/android/mini/window/sdk/az;->a([Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x2

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 68
    invoke-static {}, Lcom/alipay/android/mini/window/sdk/h;->a()Lcom/alipay/android/mini/window/sdk/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/mini/window/sdk/h;->a(Landroid/app/Activity;)V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 48
    invoke-super {p0, p1}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-static {}, Lh/b;->a()Lh/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Le/a;->A()Le/a;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh/b;->a(Landroid/content/Context;Lcom/alipay/android/app/d;)V

    .line 50
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 52
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 56
    const-string v1, " mini pay activity decorView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 58
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 59
    const-string v0, "mini_layout"

    invoke-static {v0}, Lj/i;->f(Ljava/lang/String;)I

    move-result v0

    invoke-super {p0, v0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->setContentView(I)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Landroid/os/Bundle;)V

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->c()V

    .line 196
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 199
    :cond_0
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->onDestroy()V

    .line 200
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 237
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 238
    iget v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a_:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 239
    new-instance v1, Lr/c;

    sget-object v0, Lr/a;->j:Lr/a;

    invoke-direct {v1, v0}, Lr/c;-><init>(Lr/a;)V

    .line 240
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/i;

    invoke-interface {v0, p0, v1}, Lr/i;->a(Ljava/lang/Object;Ld/b;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 247
    :goto_0
    return v0

    .line 243
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 247
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Lcom/alipay/android/mini/window/sdk/BaseActivity;->onResume()V

    .line 232
    return-void
.end method
