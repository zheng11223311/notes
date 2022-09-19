.class Lcn/domob/android/ads/DmActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DmActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/ads/DmActivity;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DmActivity;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcn/domob/android/ads/DmActivity$2;->a:Lcn/domob/android/ads/DmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 89
    sget-object v0, Lcn/domob/android/c/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/ads/DmActivity$2;->a:Lcn/domob/android/ads/DmActivity;

    invoke-static {v1}, Lcn/domob/android/ads/DmActivity;->a(Lcn/domob/android/ads/DmActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/c/a;

    .line 90
    if-eqz v0, :cond_0

    .line 91
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/domob/android/c/a;->a(Z)V

    .line 92
    invoke-virtual {v0}, Lcn/domob/android/c/a;->a()Lcn/domob/android/c/b;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-interface {v0}, Lcn/domob/android/c/b;->b()V

    .line 97
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DmActivity$2;->a:Lcn/domob/android/ads/DmActivity;

    invoke-virtual {v0}, Lcn/domob/android/ads/DmActivity;->finish()V

    .line 98
    return-void
.end method
