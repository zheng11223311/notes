.class Lcn/domob/android/ads/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/e;->a()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/e;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/e;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcn/domob/android/ads/a/e$1;->a:Lcn/domob/android/ads/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 193
    iget-object v0, p0, Lcn/domob/android/ads/a/e$1;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->b(Lcn/domob/android/ads/a/e;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/e$1;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v1}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a/e;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcn/domob/android/ads/a/e$1;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcn/domob/android/ads/a/e$1;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/a/e$a;->q()V

    .line 200
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/a/e$1;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->d(Lcn/domob/android/ads/a/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcn/domob/android/ads/a/e$1;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 202
    iget-object v0, p0, Lcn/domob/android/ads/a/e$1;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->c(Lcn/domob/android/ads/a/e;)Lcn/domob/android/ads/a/e$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/android/ads/a/e$a;->p()V

    .line 205
    :cond_1
    return-void
.end method
