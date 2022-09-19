.class Lcn/domob/android/ads/x$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/x;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Dialog;

.field final synthetic b:Landroid/content/SharedPreferences$Editor;

.field final synthetic c:Lcn/domob/android/ads/x;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/x;Landroid/app/Dialog;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcn/domob/android/ads/x$3;->c:Lcn/domob/android/ads/x;

    iput-object p2, p0, Lcn/domob/android/ads/x$3;->a:Landroid/app/Dialog;

    iput-object p3, p0, Lcn/domob/android/ads/x$3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 372
    iget-object v0, p0, Lcn/domob/android/ads/x$3;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 374
    iget-object v0, p0, Lcn/domob/android/ads/x$3;->c:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/x;)Lcn/domob/android/ads/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcn/domob/android/ads/x$3;->c:Lcn/domob/android/ads/x;

    invoke-static {v0}, Lcn/domob/android/ads/x;->a(Lcn/domob/android/ads/x;)Lcn/domob/android/ads/b;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/x$3;->c:Lcn/domob/android/ads/x;

    invoke-static {v1}, Lcn/domob/android/ads/x;->b(Lcn/domob/android/ads/x;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/x$3;->c:Lcn/domob/android/ads/x;

    invoke-static {v2}, Lcn/domob/android/ads/x;->c(Lcn/domob/android/ads/x;)I

    move-result v2

    iget-object v3, p0, Lcn/domob/android/ads/x$3;->c:Lcn/domob/android/ads/x;

    invoke-static {v3}, Lcn/domob/android/ads/x;->d(Lcn/domob/android/ads/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcn/domob/android/ads/b;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/x$3;->b:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "skip_vc"

    iget-object v2, p0, Lcn/domob/android/ads/x$3;->c:Lcn/domob/android/ads/x;

    invoke-static {v2}, Lcn/domob/android/ads/x;->g(Lcn/domob/android/ads/x;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 379
    iget-object v0, p0, Lcn/domob/android/ads/x$3;->b:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 380
    return-void
.end method
