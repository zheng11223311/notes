.class Lcom/tudou/detail/widget/VideoBriefBar$1;
.super Ljava/lang/Object;
.source "VideoBriefBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tudou/detail/widget/VideoBriefBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoBriefBar;


# direct methods
.method constructor <init>(Lcom/tudou/detail/widget/VideoBriefBar;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoBriefBar$1;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 63
    const-class v0, Landroid/view/View;

    iget-object v1, p0, Lcom/tudou/detail/widget/VideoBriefBar$1;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v1}, Lcom/tudou/detail/widget/VideoBriefBar;->access$000(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tudou/detail/widget/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tudou/detail/widget/VideoBriefBar$1;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v0}, Lcom/tudou/detail/widget/VideoBriefBar;->access$000(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tudou/detail/widget/SwitchButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    new-instance v1, Landroid/view/TouchDelegate;

    new-instance v2, Landroid/graphics/Rect;

    const/high16 v3, 0x42380000    # 46.0f

    invoke-static {v3}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v3

    const/high16 v4, 0x423c0000    # 47.0f

    invoke-static {v4}, Lcom/youku/util/Util;->dip2px(F)I

    move-result v4

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoBriefBar$1;->this$0:Lcom/tudou/detail/widget/VideoBriefBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoBriefBar;->access$000(Lcom/tudou/detail/widget/VideoBriefBar;)Lcom/tudou/detail/widget/SwitchButton;

    move-result-object v3

    iget-object v3, v3, Lcom/tudou/detail/widget/SwitchButton;->mButton:Landroid/widget/ImageView;

    invoke-direct {v1, v2, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 66
    :cond_0
    return-void
.end method
