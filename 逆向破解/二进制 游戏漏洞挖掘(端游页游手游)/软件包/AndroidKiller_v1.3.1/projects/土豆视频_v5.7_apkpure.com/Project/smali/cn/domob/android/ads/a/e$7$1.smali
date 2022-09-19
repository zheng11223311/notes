.class Lcn/domob/android/ads/a/e$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/a/e$7;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/a/e$7;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/a/e$7;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcn/domob/android/ads/a/e$7$1;->a:Lcn/domob/android/ads/a/e$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 303
    invoke-static {}, Lcn/domob/android/ads/a/e;->b()Lcn/domob/android/ads/c/f;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/a/e$7$1;->a:Lcn/domob/android/ads/a/e$7;

    iget-object v1, v1, Lcn/domob/android/ads/a/e$7;->a:Lcn/domob/android/ads/a/e;

    const-string v2, "Video dialog dismissed."

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/ads/c/f;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcn/domob/android/ads/a/e$7$1;->a:Lcn/domob/android/ads/a/e$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/e$7;->a:Lcn/domob/android/ads/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/a/e;->a(Lcn/domob/android/ads/a/e;Z)Z

    .line 306
    iget-object v0, p0, Lcn/domob/android/ads/a/e$7$1;->a:Lcn/domob/android/ads/a/e$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/e$7;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->g(Lcn/domob/android/ads/a/e;)V

    .line 309
    iget-object v0, p0, Lcn/domob/android/ads/a/e$7$1;->a:Lcn/domob/android/ads/a/e$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/e$7;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->h(Lcn/domob/android/ads/a/e;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcn/domob/android/ads/a/e$7$1;->a:Lcn/domob/android/ads/a/e$7;

    iget-object v0, v0, Lcn/domob/android/ads/a/e$7;->a:Lcn/domob/android/ads/a/e;

    invoke-static {v0}, Lcn/domob/android/ads/a/e;->i(Lcn/domob/android/ads/a/e;)V

    .line 313
    :cond_0
    return-void
.end method
