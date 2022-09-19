.class Lcn/domob/android/ads/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/t$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/s;->b(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/s;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/s;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/s;->o()V

    .line 95
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    iget-object v0, v0, Lcn/domob/android/ads/s;->a:Lcn/domob/android/ads/b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcn/domob/android/ads/b;->a(J)V

    .line 96
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/s;->p()V

    .line 101
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcn/domob/android/ads/s$1;->a:Lcn/domob/android/ads/s;

    invoke-virtual {v0}, Lcn/domob/android/ads/s;->q()V

    .line 106
    return-void
.end method
