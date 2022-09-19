.class Lcn/domob/android/ads/z$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/z;->a(Lcn/domob/android/ads/g;[Landroid/view/animation/AnimationSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/z;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/z;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcn/domob/android/ads/z$4;->a:Lcn/domob/android/ads/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcn/domob/android/ads/z$4;->a:Lcn/domob/android/ads/z;

    iget-object v0, v0, Lcn/domob/android/ads/z;->o:Lcn/domob/android/ads/AdEventListener;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcn/domob/android/ads/z$4;->a:Lcn/domob/android/ads/z;

    iget-object v0, v0, Lcn/domob/android/ads/z;->o:Lcn/domob/android/ads/AdEventListener;

    iget-object v1, p0, Lcn/domob/android/ads/z$4;->a:Lcn/domob/android/ads/z;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/AdEventListener;->onAdReturned(Lcn/domob/android/ads/AdView;)V

    .line 246
    :cond_0
    return-void
.end method
