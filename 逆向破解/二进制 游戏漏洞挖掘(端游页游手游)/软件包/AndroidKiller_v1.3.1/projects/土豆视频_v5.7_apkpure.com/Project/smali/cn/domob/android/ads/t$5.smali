.class Lcn/domob/android/ads/t$5;
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
.field final synthetic a:Lcn/domob/android/ads/t;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/t;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcn/domob/android/ads/t$5;->a:Lcn/domob/android/ads/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 458
    invoke-static {}, Lcn/domob/android/ads/t;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    const-string/jumbo v1, "\u5c55\u73b0\u65f6\u95f4\u5230\u8fbe\u81ea\u52a8\u5173\u95ed\u65f6\u95f4\u3002"

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/c/f;->a(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcn/domob/android/ads/t$5;->a:Lcn/domob/android/ads/t;

    invoke-static {v0}, Lcn/domob/android/ads/t;->a(Lcn/domob/android/ads/t;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcn/domob/android/ads/t$5;->a:Lcn/domob/android/ads/t;

    invoke-static {v0}, Lcn/domob/android/ads/t;->a(Lcn/domob/android/ads/t;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 462
    :cond_0
    return-void
.end method
