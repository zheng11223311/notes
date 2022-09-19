.class Lcn/domob/android/ads/z$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/a/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/z;->a(Landroid/content/Context;Lcn/domob/android/ads/z$b;Landroid/widget/RelativeLayout;)V
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
    .line 556
    iput-object p1, p0, Lcn/domob/android/ads/z$8;->a:Lcn/domob/android/ads/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcn/domob/android/ads/z$8;->a:Lcn/domob/android/ads/z;

    iget-object v0, v0, Lcn/domob/android/ads/z;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcn/domob/android/ads/z$8$1;

    invoke-direct {v1, p0}, Lcn/domob/android/ads/z$8$1;-><init>(Lcn/domob/android/ads/z$8;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 568
    return-void
.end method
