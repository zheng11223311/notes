.class Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;
.super Ljava/lang/Object;
.source "FullscreenFeatureView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailFeatureItemHolder"
.end annotation


# instance fields
.field mDuration:Landroid/widget/TextView;

.field mPic:Landroid/widget/ImageView;

.field mRoot:Landroid/view/View;

.field mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;


# direct methods
.method public constructor <init>(Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;Landroid/view/View;)V
    .locals 1
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->this$0:Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput-object p2, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mRoot:Landroid/view/View;

    .line 239
    const v0, 0x7f0c040f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mPic:Landroid/widget/ImageView;

    .line 240
    const v0, 0x7f0c0411

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mDuration:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0c0410

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/phone/detail/plugin/fullscreen/FullscreenFeatureView$DetailFeatureItemHolder;->mTitle:Landroid/widget/TextView;

    .line 242
    return-void
.end method
