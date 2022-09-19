.class public Lcom/tudou/detail/widget/VideoPlaylistBar$AlphaAnim;
.super Landroid/view/animation/LayoutAnimationController;
.source "VideoPlaylistBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/VideoPlaylistBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlphaAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/widget/VideoPlaylistBar;Landroid/view/animation/Animation;)V
    .locals 1
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$AlphaAnim;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    .line 51
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, p2, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 52
    return-void
.end method


# virtual methods
.method protected getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .locals 5
    .param p1, "param"    # Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .prologue
    .line 56
    invoke-static {}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTransformedIndex index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 58
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/tudou/detail/widget/VideoPlaylistBar$AlphaAnim;->setAnimation(Landroid/view/animation/Animation;)V

    .line 60
    const-string v2, "number"

    iget-object v3, p0, Lcom/tudou/detail/widget/VideoPlaylistBar$AlphaAnim;->this$0:Lcom/tudou/detail/widget/VideoPlaylistBar;

    invoke-static {v3}, Lcom/tudou/detail/widget/VideoPlaylistBar;->access$100(Lcom/tudou/detail/widget/VideoPlaylistBar;)Lcom/tudou/detail/vo/VideoList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tudou/detail/vo/VideoList;->getSeriesMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    .line 61
    .local v1, "numColumn":I
    :goto_0
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    div-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    return v2

    .line 60
    .end local v1    # "numColumn":I
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method
