.class Lcom/alipay/android/mini/window/sdk/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/mini/window/sdk/bd;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/mini/window/sdk/bd;)V
    .locals 1

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/be;->b:Z

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 211
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    iget-object v2, v2, Lcom/alipay/android/mini/window/sdk/bd;->r:Ljava/util/Map;

    const-string v3, "mini_guide_img"

    new-array v4, v0, [I

    const-string v5, "mini_guide_img"

    invoke-static {v5}, Lj/i;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    iget-object v2, v2, Lcom/alipay/android/mini/window/sdk/bd;->r:Ljava/util/Map;

    const-string v3, "mini_guide_btn"

    new-array v4, v0, [I

    const-string v5, "mini_guide_btn"

    invoke-static {v5}, Lj/i;->a(Ljava/lang/String;)I

    move-result v5

    aput v5, v4, v1

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-boolean v2, p0, Lcom/alipay/android/mini/window/sdk/be;->b:Z

    if-nez v2, :cond_0

    .line 216
    iput-boolean v0, p0, Lcom/alipay/android/mini/window/sdk/be;->b:Z

    .line 217
    iget-object v2, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    invoke-static {v2}, Lcom/alipay/android/mini/window/sdk/bd;->a(Lcom/alipay/android/mini/window/sdk/bd;)Lcom/alipay/android/mini/window/sdk/h;

    move-result-object v2

    const-string v3, "info"

    invoke-virtual {v2, v3}, Lcom/alipay/android/mini/window/sdk/h;->a(Ljava/lang/String;)Z

    move-result v2

    .line 219
    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    iget-object v3, v3, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v0, :cond_1

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    iget-boolean v1, v1, Lcom/alipay/android/mini/window/sdk/bd;->d:Z

    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    invoke-static {v0}, Lcom/alipay/android/mini/window/sdk/bd;->a(Lcom/alipay/android/mini/window/sdk/bd;)Lcom/alipay/android/mini/window/sdk/h;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    iget-object v1, v1, Lcom/alipay/android/mini/window/sdk/bd;->h:Landroid/app/Activity;

    const-string v2, "info"

    iget-object v3, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    iget-object v3, v3, Lcom/alipay/android/mini/window/sdk/bd;->a:Lcom/alipay/android/mini/window/sdk/ak;

    invoke-virtual {v3}, Lcom/alipay/android/mini/window/sdk/ak;->b()Lcom/alipay/android/mini/uielement/c;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/mini/window/sdk/h;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/alipay/android/mini/uielement/c;)V

    .line 233
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/mini/window/sdk/be;->a:Lcom/alipay/android/mini/window/sdk/bd;

    iget-object v0, v0, Lcom/alipay/android/mini/window/sdk/bd;->a:Lcom/alipay/android/mini/window/sdk/ak;

    invoke-virtual {v0}, Lcom/alipay/android/mini/window/sdk/ak;->b()Lcom/alipay/android/mini/uielement/c;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0}, Lcom/alipay/android/mini/uielement/c;->b()V

    goto :goto_1
.end method
