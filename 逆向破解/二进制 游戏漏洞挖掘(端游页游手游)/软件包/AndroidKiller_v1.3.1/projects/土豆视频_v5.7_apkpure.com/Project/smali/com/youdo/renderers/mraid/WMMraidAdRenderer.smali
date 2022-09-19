.class public Lcom/youdo/renderers/mraid/WMMraidAdRenderer;
.super Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youdo/renderers/mraid/WMMraidAdRenderer$WMMraidAdRendererEventHandler;
    }
.end annotation


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "WMMraidAdRenderer"


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mMoreButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/vo/AdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;Lcom/youdo/renderers/mraid/WMMraidAdRenderer$WMMraidAdRendererEventHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;)V

    iput-object v0, p0, Lcom/youdo/renderers/mraid/WMMraidAdRenderer;->mMoreButton:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/youdo/renderers/mraid/WMMraidAdRenderer;->mBackButton:Landroid/widget/ImageButton;

    const v0, 0x1080045

    invoke-virtual {p0, v0}, Lcom/youdo/renderers/mraid/WMMraidAdRenderer;->newImgBtn(I)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/renderers/mraid/WMMraidAdRenderer;->mMoreButton:Landroid/widget/ImageButton;

    const v0, 0x1080038

    invoke-virtual {p0, v0}, Lcom/youdo/renderers/mraid/WMMraidAdRenderer;->newImgBtn(I)Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lcom/youdo/renderers/mraid/WMMraidAdRenderer;->mBackButton:Landroid/widget/ImageButton;

    return-void
.end method


# virtual methods
.method public displayCloseButton()V
    .locals 2

    iget-object v0, p0, Lcom/youdo/renderers/mraid/WMMraidAdRenderer;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public load()V
    .locals 0

    return-void
.end method
