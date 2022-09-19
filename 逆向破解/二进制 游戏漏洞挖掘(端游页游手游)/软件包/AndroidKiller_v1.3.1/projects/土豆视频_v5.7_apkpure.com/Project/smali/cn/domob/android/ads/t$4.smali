.class Lcn/domob/android/ads/t$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/t;->a(Landroid/view/View;Lcn/domob/android/ads/t$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/t$d;

.field final synthetic b:Lcn/domob/android/ads/t;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/t;Lcn/domob/android/ads/t$d;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcn/domob/android/ads/t$4;->b:Lcn/domob/android/ads/t;

    iput-object p2, p0, Lcn/domob/android/ads/t$4;->a:Lcn/domob/android/ads/t$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 445
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string/jumbo v1, "\u5c55\u73b0\u65f6\u95f4\u5230\u8fbe\u6700\u5c0f\u5c55\u73b0\u65f6\u95f4\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcn/domob/android/ads/t$4;->b:Lcn/domob/android/ads/t;

    invoke-static {v0}, Lcn/domob/android/ads/t;->a(Lcn/domob/android/ads/t;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 447
    iget-object v0, p0, Lcn/domob/android/ads/t$4;->a:Lcn/domob/android/ads/t$d;

    invoke-static {v0}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcn/domob/android/ads/t$4;->a:Lcn/domob/android/ads/t$d;

    invoke-static {v0}, Lcn/domob/android/ads/t$d;->f(Lcn/domob/android/ads/t$d;)Lcn/domob/android/ads/t$b;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/t$b;->b()V

    .line 450
    :cond_0
    return-void
.end method
