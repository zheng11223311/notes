.class Lcom/alipay/android/mini/window/sdk/ag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    iput-object p2, p0, Lcom/alipay/android/mini/window/sdk/ag;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    const-string v1, "mini_loading"

    invoke-static {v1}, Lj/i;->g(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->a:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->a:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ag;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/o;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/mini/widget/o;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 178
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)V

    .line 171
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;

    move-result-object v1

    if-nez v1, :cond_2

    .line 172
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    new-instance v2, Lcom/alipay/android/mini/widget/o;

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-direct {v2, v3}, Lcom/alipay/android/mini/widget/o;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->a(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;Lcom/alipay/android/mini/widget/o;)Lcom/alipay/android/mini/widget/o;

    .line 174
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/alipay/android/mini/widget/o;->setCancelable(Z)V

    .line 175
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v1}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/mini/widget/o;->a(Ljava/lang/CharSequence;)Lcom/alipay/android/mini/widget/o;

    .line 176
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/ag;->b:Lcom/alipay/android/mini/window/sdk/MiniPayActivity;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/MiniPayActivity;->b(Lcom/alipay/android/mini/window/sdk/MiniPayActivity;)Lcom/alipay/android/mini/widget/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/mini/widget/o;->show()V

    goto :goto_0
.end method
