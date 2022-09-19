.class public Lcn/domob/android/ads/Updater;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "publisherID"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcn/domob/android/ads/x;

    new-instance v1, Lcn/domob/android/ads/b;

    invoke-direct {v1, p1}, Lcn/domob/android/ads/b;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcn/domob/android/ads/x;-><init>(Landroid/content/Context;Lcn/domob/android/ads/b;)V

    invoke-virtual {v0}, Lcn/domob/android/ads/x;->a()V

    .line 19
    return-void
.end method
