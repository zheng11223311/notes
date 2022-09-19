.class Lcn/domob/android/ads/DmActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DmActivity;->b()V
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
    .line 116
    iput-object p1, p0, Lcn/domob/android/ads/DmActivity$3;->a:Lcn/domob/android/ads/DmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 118
    iget-object v0, p0, Lcn/domob/android/ads/DmActivity$3;->a:Lcn/domob/android/ads/DmActivity;

    invoke-virtual {v0}, Lcn/domob/android/ads/DmActivity;->finish()V

    .line 119
    return-void
.end method
