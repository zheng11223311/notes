.class Lcn/domob/android/ads/a/d$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/e$b$a;)V
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
    .line 328
    iput-object p1, p0, Lcn/domob/android/ads/a/d$4;->a:Lcn/domob/android/ads/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcn/domob/android/ads/a/d$4;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->f(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcn/domob/android/ads/a/d$4;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->f(Lcn/domob/android/ads/a/d;)Lcn/domob/android/ads/a/b;

    move-result-object v0

    sget-object v1, Lcn/domob/android/ads/l;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/a/b;->loadUrl(Ljava/lang/String;)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/d$4;->a:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->m(Lcn/domob/android/ads/a/d;)V

    .line 337
    return-void
.end method
