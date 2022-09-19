.class Lcn/domob/android/ads/z$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/ads/c/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/z;->a(Landroid/widget/ImageButton;)Lcn/domob/android/ads/c/d$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcn/domob/android/ads/z;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/z;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/domob/android/ads/z$3;->b:Lcn/domob/android/ads/z;

    iput-object p2, p0, Lcn/domob/android/ads/z$3;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcn/domob/android/ads/z$3;->a:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcn/domob/android/ads/z$3;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 126
    :cond_0
    return-void
.end method
