.class Lcn/domob/android/ads/t$3;
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
.field final synthetic a:Landroid/widget/ImageButton;

.field final synthetic b:Lcn/domob/android/ads/t;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/t;Landroid/widget/ImageButton;)V
    .locals 0

    .prologue
    .line 432
    iput-object p1, p0, Lcn/domob/android/ads/t$3;->b:Lcn/domob/android/ads/t;

    iput-object p2, p0, Lcn/domob/android/ads/t$3;->a:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcn/domob/android/ads/t$3;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 436
    return-void
.end method
