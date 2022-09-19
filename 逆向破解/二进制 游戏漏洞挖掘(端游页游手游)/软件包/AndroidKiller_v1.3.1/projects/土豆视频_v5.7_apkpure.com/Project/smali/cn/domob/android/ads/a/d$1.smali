.class Lcn/domob/android/ads/a/d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/e$b;

.field final synthetic b:Lcn/domob/android/ads/a/d;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/e$b;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    iput-object p2, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 142
    new-instance v0, Lcn/domob/android/ads/a/b;

    iget-object v1, p0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "banner"

    invoke-direct {v0, v1, v2, v5}, Lcn/domob/android/ads/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 143
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v2}, Lcn/domob/android/ads/a/d;->b(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/f;

    move-result-object v2

    invoke-virtual {v2}, Lcn/domob/android/ads/f;->a()I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v3}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/f;

    move-result-object v3

    invoke-virtual {v3}, Lcn/domob/android/ads/f;->b()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v1, v0}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;Landroid/view/View;)Landroid/view/View;

    .line 147
    new-instance v1, Lcn/domob/android/ads/a/d$1$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$1$1;-><init>(Lcn/domob/android/ads/a/d$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/b;->a(Lcn/domob/android/ads/h$b;)V

    .line 190
    new-instance v1, Lcn/domob/android/ads/a/d$1$2;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/a/d$1$2;-><init>(Lcn/domob/android/ads/a/d$1;)V

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/b;->a(Lcn/domob/android/ads/h$a;)V

    .line 199
    iget-object v1, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/e$b;

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->j()Ljava/lang/String;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 202
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get an WebView instance and load with URL:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/e$b;

    invoke-virtual {v3}, Lcn/domob/android/ads/e$b;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/e$b;

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->i()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    const-string v2, "content"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v1

    const-string v2, "Get an WebView instance and load data = [%s] with base URL=[%s]"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/e$b;

    invoke-virtual {v4}, Lcn/domob/android/ads/e$b;->l()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    iget-object v5, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/e$b;

    invoke-virtual {v5}, Lcn/domob/android/ads/e$b;->k()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/e$b;

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->k()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/a/d$1;->a:Lcn/domob/android/ads/e$b;

    invoke-virtual {v2}, Lcn/domob/android/ads/e$b;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Content type is not available."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    sget-object v1, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    const-string v2, "Content type is illegal."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/d;->c(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    goto :goto_0
.end method
