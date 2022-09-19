.class Lcn/domob/android/ads/a/d$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/h$a;


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
    .line 190
    iput-object p1, p0, Lcn/domob/android/ads/a/d$1$2;->a:Lcn/domob/android/ads/a/d$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/domob/android/ads/h;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Lcn/domob/android/ads/a/d;->r()Lcn/domob/android/ads/c/f;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Banner BaseWebView \u62e6\u622a\u5230 URL\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcn/domob/android/ads/a/d$1$2;->a:Lcn/domob/android/ads/a/d$1;

    iget-object v0, v0, Lcn/domob/android/ads/a/d$1;->b:Lcn/domob/android/ads/a/d;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcn/domob/android/ads/a/d;->a(Landroid/webkit/WebView;Ljava/lang/String;Z)Z

    .line 195
    return-void
.end method
