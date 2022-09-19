.class public Lcom/youdo/renderers/mraid/PureMraidAdRenderer;
.super Lcom/youdo/renderers/AdRenderer;

# interfaces
.implements Lcom/youdo/renderers/IAdRenderer;


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "PureMraidAdRenderer"


# instance fields
.field protected listener:Lcom/youdo/view/MraidView$MraidViewListener;

.field protected mMraidView:Lcom/youdo/view/MraidView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/youdo/renderers/AdRenderer;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V

    new-instance v0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer$1;

    invoke-direct {v0, p0}, Lcom/youdo/renderers/mraid/PureMraidAdRenderer$1;-><init>(Lcom/youdo/renderers/mraid/PureMraidAdRenderer;)V

    iput-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->listener:Lcom/youdo/view/MraidView$MraidViewListener;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/youdo/renderers/AdRenderer;->close()V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0}, Lcom/youdo/view/MraidView;->close()V

    return-void
.end method

.method public getWebView()Lcom/youdo/view/MraidView;
    .locals 1

    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    return-object v0
.end method

.method public hide(Lorg/openad/constants/IOpenAdContants$MessageSender;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/youdo/renderers/AdRenderer;->hide(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, p1}, Lcom/youdo/view/MraidView;->hide(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    return-void
.end method

.method public load()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v1, -0x1

    invoke-super {p0}, Lcom/youdo/renderers/AdRenderer;->load()V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v1, Lcom/youdo/view/MraidView;

    iget-object v2, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/youdo/renderers/AdRenderer;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    invoke-direct {v1, v2, v3}, Lcom/youdo/view/MraidView;-><init>(Landroid/content/Context;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V

    iput-object v1, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    iget-object v2, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->listener:Lcom/youdo/view/MraidView$MraidViewListener;

    invoke-virtual {v1, v2}, Lcom/youdo/view/MraidView;->setListener(Lcom/youdo/view/MraidView$MraidViewListener;)V

    iget-object v1, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    iget v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2, v0}, Lcom/youdo/view/MraidView;->setMaxSize(II)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mAdDataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

    invoke-interface {v0}, Lcom/youdo/ad/interfaces/IAdDataVO;->getHTML5AdAssetURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openad/common/util/URIUtil;->isHttpProtocol(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/openad/common/util/URIUtil;->isHttpsProtocol(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lorg/openad/common/util/URIUtil;->isFileProtocol(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v1, v0}, Lcom/youdo/view/MraidView;->loadUrl(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mAdUnitContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    iget-object v1, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mAdDataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

    invoke-interface {v1}, Lcom/youdo/ad/interfaces/IAdDataVO;->getHTML5AdContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youdo/view/MraidView;->loadContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/youdo/renderers/AdRenderer;->resize(II)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, p1, p2}, Lcom/youdo/view/MraidView;->resize(II)V

    return-void
.end method

.method public show(Lorg/openad/constants/IOpenAdContants$MessageSender;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/youdo/renderers/AdRenderer;->show(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    iget-object v0, p0, Lcom/youdo/renderers/mraid/PureMraidAdRenderer;->mMraidView:Lcom/youdo/view/MraidView;

    invoke-virtual {v0, p1}, Lcom/youdo/view/MraidView;->show(Lorg/openad/constants/IOpenAdContants$MessageSender;)V

    return-void
.end method

.method public start()V
    .locals 0

    invoke-super {p0}, Lcom/youdo/renderers/AdRenderer;->start()V

    return-void
.end method
