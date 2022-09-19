.class Lcn/domob/android/ads/a/d$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/b;Lcn/domob/android/ads/e$b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/d;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcn/domob/android/ads/a/d$2;->a:Lcn/domob/android/ads/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/h;)V
    .locals 2

    .prologue
    .line 253
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Both banner and expandable part are ok in current creative. Show Ad."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcn/domob/android/ads/a/d$2;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->i(Lcn/domob/android/ads/a/d;)V

    .line 256
    iget-object v0, p0, Lcn/domob/android/ads/a/d$2;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->j(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b;->m()Lcn/domob/android/ads/e$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/domob/android/ads/e$b$a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcn/domob/android/ads/a/d$2;->a:Lcn/domob/android/ads/a/d;

    iget-object v1, p0, Lcn/domob/android/ads/a/d$2;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v1}, Lcn/domob/android/ads/a/d;->k(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/e;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e;->d()Lcn/domob/android/ads/e$b;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/android/ads/e$b;->m()Lcn/domob/android/ads/e$b$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/e$b$a;)V

    .line 259
    :cond_0
    return-void
.end method

.method public b(Lcn/domob/android/ads/h;)V
    .locals 3

    .prologue
    .line 263
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "FAILED to load  expandable view."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->e(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcn/domob/android/ads/a/d$2;->a:Lcn/domob/android/ads/a/d;

    sget-object v1, Lcn/domob/android/ads/AdManager$ErrorCode;->INTERNAL_ERROR:Lcn/domob/android/ads/AdManager$ErrorCode;

    const-string v2, "Expandable part load failed."

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/a/d;->d(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/AdManager$ErrorCode;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public c(Lcn/domob/android/ads/h;)V
    .locals 2

    .prologue
    .line 245
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string v1, "Timeout while loading expandable part. Show AD."

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcn/domob/android/ads/a/d$2;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->h(Lcn/domob/android/ads/a/d;)V

    .line 247
    return-void
.end method
