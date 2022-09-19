.class Lcom/alipay/android/mini/window/sdk/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:[Lr/a;

.field final synthetic c:[Lr/a;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Ljava/lang/String;[Lr/a;[Lr/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ad;->g:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/ad;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/mini/window/sdk/ad;->b:[Lr/a;

    iput-object p4, p0, Lcom/alipay/android/mini/window/sdk/ad;->c:[Lr/a;

    iput-object p5, p0, Lcom/alipay/android/mini/window/sdk/ad;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alipay/android/mini/window/sdk/ad;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alipay/android/mini/window/sdk/ad;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 116
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ad;->g:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V

    .line 117
    const-string v1, ""

    .line 118
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ad;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ad;->g:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    const-string v2, "mini_error_title_default"

    invoke-static {v2}, Lj/i;->g(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ad;->b:[Lr/a;

    if-eqz v2, :cond_2

    .line 125
    new-instance v4, Lcom/alipay/android/mini/window/sdk/ae;

    invoke-direct {v4, p0}, Lcom/alipay/android/mini/window/sdk/ae;-><init>(Lcom/alipay/android/mini/window/sdk/ad;)V

    .line 133
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ad;->c:[Lr/a;

    if-eqz v2, :cond_1

    .line 134
    new-instance v6, Lcom/alipay/android/mini/window/sdk/af;

    invoke-direct {v6, p0}, Lcom/alipay/android/mini/window/sdk/af;-><init>(Lcom/alipay/android/mini/window/sdk/ad;)V

    .line 142
    :goto_1
    iget-object v7, p0, Lcom/alipay/android/mini/window/sdk/ad;->g:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ad;->g:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/ad;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/ad;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/mini/window/sdk/ad;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/alipay/android/mini/widget/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 145
    return-void

    :cond_1
    move-object v6, v0

    goto :goto_1

    :cond_2
    move-object v4, v0

    goto :goto_0
.end method
