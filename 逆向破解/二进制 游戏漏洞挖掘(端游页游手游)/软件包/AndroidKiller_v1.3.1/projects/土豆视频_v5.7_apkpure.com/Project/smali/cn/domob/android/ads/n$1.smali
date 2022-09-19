.class Lcn/domob/android/ads/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/n;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcn/domob/android/ads/n;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/n;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcn/domob/android/ads/n$1;->b:Lcn/domob/android/ads/n;

    iput-object p2, p0, Lcn/domob/android/ads/n$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 160
    iget-object v0, p0, Lcn/domob/android/ads/n$1;->b:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcn/domob/android/ads/n$1;->b:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->a(Lcn/domob/android/ads/n;)Lcn/domob/android/ads/n$a;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$1;->b:Lcn/domob/android/ads/n;

    invoke-interface {v0, v1}, Lcn/domob/android/ads/n$a;->h(Lcn/domob/android/ads/n;)V

    .line 163
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/n$1;->b:Lcn/domob/android/ads/n;

    invoke-static {v0}, Lcn/domob/android/ads/n;->b(Lcn/domob/android/ads/n;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/ads/n$1;->a:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void
.end method
