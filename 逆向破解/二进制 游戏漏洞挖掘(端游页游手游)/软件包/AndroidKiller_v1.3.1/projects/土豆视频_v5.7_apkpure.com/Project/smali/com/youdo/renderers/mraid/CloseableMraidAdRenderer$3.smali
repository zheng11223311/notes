.class Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;-><init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/youdo/ad/interfaces/IAdDataVO;Lcom/youdo/ad/interfaces/IAdApplicationContext;Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;


# direct methods
.method constructor <init>(Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$3;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$3;->this$0:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;

    iget-object v0, v0, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer;->mEventHandler:Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;

    sget-object v1, Lorg/openad/constants/IOpenAdContants$ViewMode;->EXPAND:Lorg/openad/constants/IOpenAdContants$ViewMode;

    sget-object v2, Lorg/openad/constants/IOpenAdContants$ViewMode;->THUMBNAIL:Lorg/openad/constants/IOpenAdContants$ViewMode;

    invoke-interface {v0, v1, v2}, Lcom/youdo/renderers/mraid/CloseableMraidAdRenderer$EventHandler;->onViewModeChange(Lorg/openad/constants/IOpenAdContants$ViewMode;Lorg/openad/constants/IOpenAdContants$ViewMode;)V

    return-void
.end method
