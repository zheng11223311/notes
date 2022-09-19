.class Lcn/domob/android/ads/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/z;


# direct methods
.method private constructor <init>(Lcn/domob/android/ads/z;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcn/domob/android/ads/z$a;->a:Lcn/domob/android/ads/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/android/ads/z;Lcn/domob/android/ads/z$1;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcn/domob/android/ads/z$a;-><init>(Lcn/domob/android/ads/z;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcn/domob/android/ads/z$a;->a:Lcn/domob/android/ads/z;

    invoke-static {v0}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/z;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/domob/android/ads/z$a;->a:Lcn/domob/android/ads/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/z;Z)Z

    .line 230
    iget-object v0, p0, Lcn/domob/android/ads/z$a;->a:Lcn/domob/android/ads/z;

    invoke-static {v0}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/z;)Lcn/domob/android/ads/PreRollAdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcn/domob/android/ads/z$a;->a:Lcn/domob/android/ads/z;

    invoke-static {v0}, Lcn/domob/android/ads/z;->b(Lcn/domob/android/ads/z;)Lcn/domob/android/ads/PreRollAdListener;

    move-result-object v0

    sget-object v1, Lcn/domob/android/ads/AdManager$ErrorCode;->SHOW_TIMEOUT:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/PreRollAdListener;->onPreRollAdFailed(Lcn/domob/android/ads/AdManager$ErrorCode;)V

    .line 234
    :cond_0
    return-void
.end method
