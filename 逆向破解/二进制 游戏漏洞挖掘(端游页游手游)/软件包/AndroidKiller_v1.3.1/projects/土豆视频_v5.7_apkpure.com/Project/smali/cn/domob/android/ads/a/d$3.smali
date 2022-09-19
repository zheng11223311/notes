.class Lcn/domob/android/ads/a/d$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/d;->a(Lcn/domob/android/ads/a/b;Lcn/domob/android/ads/e$b$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/b;

.field final synthetic b:Lcn/domob/android/ads/a/d;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/d;Lcn/domob/android/ads/a/b;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcn/domob/android/ads/a/d$3;->b:Lcn/domob/android/ads/a/d;

    iput-object p2, p0, Lcn/domob/android/ads/a/d$3;->a:Lcn/domob/android/ads/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/h;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 274
    sget-object v0, Lcn/domob/android/ads/a/d;->h:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 278
    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/domob/android/ads/a/d$3;->b:Lcn/domob/android/ads/a/d;

    invoke-static {v0}, Lcn/domob/android/ads/a/d;->l(Lcn/domob/android/ads/a/d;)V

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/d$3;->b:Lcn/domob/android/ads/a/d;

    iget-object v1, p0, Lcn/domob/android/ads/a/d$3;->a:Lcn/domob/android/ads/a/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Lcn/domob/android/ads/a/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    goto :goto_0
.end method
