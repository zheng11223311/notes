.class Lcn/domob/android/ads/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/AdManager$ErrorCode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/AdManager$ErrorCode;

.field final synthetic b:Lcn/domob/android/ads/b;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/b;Lcn/domob/android/ads/AdManager$ErrorCode;)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcn/domob/android/ads/b$2;->b:Lcn/domob/android/ads/b;

    iput-object p2, p0, Lcn/domob/android/ads/b$2;->a:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 818
    iget-object v0, p0, Lcn/domob/android/ads/b$2;->b:Lcn/domob/android/ads/b;

    iget-object v0, v0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->f()Lcn/domob/android/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 819
    iget-object v0, p0, Lcn/domob/android/ads/b$2;->b:Lcn/domob/android/ads/b;

    iget-object v0, v0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->f()Lcn/domob/android/ads/AdListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b$2;->b:Lcn/domob/android/ads/b;

    iget-object v1, v1, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/AdListener;->onFailedToReceiveFreshAd(Lcn/domob/android/ads/AdView;)V

    .line 822
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/b$2;->b:Lcn/domob/android/ads/b;

    iget-object v0, v0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 823
    iget-object v0, p0, Lcn/domob/android/ads/b$2;->b:Lcn/domob/android/ads/b;

    iget-object v0, v0, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/AdView;->g()Lcn/domob/android/ads/AdEventListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/b$2;->b:Lcn/domob/android/ads/b;

    iget-object v1, v1, Lcn/domob/android/ads/b;->d:Lcn/domob/android/ads/AdView;

    iget-object v2, p0, Lcn/domob/android/ads/b$2;->a:Lcn/domob/android/ads/AdManager$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcn/domob/android/ads/AdEventListener;->onAdFailed(Lcn/domob/android/ads/AdView;Lcn/domob/android/ads/AdManager$ErrorCode;)V

    .line 825
    :cond_1
    return-void
.end method
