.class Lcn/domob/android/ads/a/d$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/d$1;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d$1;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/h;)V
    .locals 6

    .prologue
    .line 157
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Finished to load  banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->d(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->m()Lcn/domob/android/ads/e$b$a;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_1

    .line 167
    iget-object v1, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v1, v1, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    new-instance v2, Lcn/domob/android/ads/a/b;

    iget-object v3, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v3, v3, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v3}, Lcn/domob/android/ads/a/d;->e(Lcn/domob/android/ads/a/d;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "expandable"

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcn/domob/android/ads/a/b;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {v1, v2}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/a/b;)Lcn/domob/android/ads/a/b;

    .line 168
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v1

    const-string v2, "There is expandable part in current creative."

    invoke-virtual {v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v1, v1, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    iget-object v2, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v2, v2, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v2}, Lcn/domob/android/ads/a/d;->f(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/b;

    move-result-object v2

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b$a;->g()Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/a/b;Lcn/domob/android/ads/e$b$a;Z)V

    .line 170
    invoke-virtual {v0}, Lcn/domob/android/ads/e$b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Expandable preload is disabled in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 179
    :goto_1
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->g(Lcn/domob/android/ads/a/d;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Banner is ready and there is no expandable part in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcn/domob/android/ads/h;)V
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "FAILED to load  banner view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    sget-object v1, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    const-string v2, "Creative load failed."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/d;->b(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public c(Lcn/domob/android/ads/h;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1$1;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    sget-object v1, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    const-string v2, "Creative load timeout."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    .line 153
    return-void
.end method
