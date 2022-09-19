.class public Lcom/youdo/renderers/AdRenderer;
.super Lorg/openad/events/XYDEventDispatcher;

# interfaces
.implements Lcom/youdo/renderers/IAdRenderer;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

.field protected mAdDataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

.field protected mAdUnitContainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;)V
    .locals 0

    invoke-direct {p0}, Lorg/openad/events/XYDEventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/youdo/renderers/AdRenderer;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/youdo/renderers/AdRenderer;->mAdUnitContainer:Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/youdo/renderers/AdRenderer;->mAdDataVO:Lcom/youdo/ad/interfaces/IAdDataVO;

    iput-object p4, p0, Lcom/youdo/renderers/AdRenderer;->mAdApplicationContext:Lcom/youdo/ad/interfaces/IAdApplicationContext;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public hide(Lorg/openad/constants/IOpenAdContants$MessageSender;)V
    .locals 0

    return-void
.end method

.method public load()V
    .locals 0

    return-void
.end method

.method public resize(II)V
    .locals 0

    return-void
.end method

.method public show(Lorg/openad/constants/IOpenAdContants$MessageSender;)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
