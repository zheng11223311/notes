.class public Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;
.super Landroid/view/animation/LayoutAnimationController;
.source "CommentUserPicSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tudou/detail/widget/CommentUserPicSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MoveUpAnim"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;


# direct methods
.method public constructor <init>(Lcom/tudou/detail/widget/CommentUserPicSwitcher;Landroid/view/animation/Animation;)V
    .locals 1
    .param p2, "anim"    # Landroid/view/animation/Animation;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;->this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;F)V

    .line 36
    return-void
.end method


# virtual methods
.method protected getTransformedIndex(Landroid/view/animation/LayoutAnimationController$AnimationParameters;)I
    .locals 12
    .param p1, "param"    # Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .prologue
    .line 40
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v11, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 41
    .local v11, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .line 42
    .local v1, "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v10, 0x0

    .line 43
    .local v10, "alpha":Landroid/view/animation/AlphaAnimation;
    const/4 v0, 0x0

    .line 44
    .local v0, "scale":Landroid/view/animation/ScaleAnimation;
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;->this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    iget-boolean v2, v2, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstTimeShow:Z

    if-eqz v2, :cond_4

    .line 45
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    if-nez v2, :cond_1

    .line 46
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x42580000    # 54.0f

    const/high16 v6, 0x42580000    # 54.0f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 47
    .end local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 48
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 81
    .restart local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    :cond_0
    :goto_0
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 82
    invoke-virtual {v11, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 83
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object v2, p0, Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;->this$0:Lcom/tudou/detail/widget/CommentUserPicSwitcher;

    iget-boolean v2, v2, Lcom/tudou/detail/widget/CommentUserPicSwitcher;->mFirstTimeShow:Z

    if-eqz v2, :cond_8

    const-wide/16 v2, 0xa

    :goto_1
    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 85
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 86
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 87
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 88
    invoke-virtual {p0, v11}, Lcom/tudou/detail/widget/CommentUserPicSwitcher$MoveUpAnim;->setAnimation(Landroid/view/animation/Animation;)V

    .line 89
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    return v2

    .line 49
    :cond_1
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 50
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    const v3, 0x3f4ccccd    # 0.8f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3f4ccccd    # 0.8f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v8, 0x42580000    # 54.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 51
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 52
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3e99999a    # 0.3f

    const/4 v8, 0x1

    const v9, 0x3e99999a    # 0.3f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    goto :goto_0

    .line 53
    :cond_2
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 54
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    const v3, 0x3f333333    # 0.7f

    const v4, 0x3f333333    # 0.7f

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v8, 0x42580000    # 54.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 55
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 56
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3f19999a    # 0.6f

    const/4 v8, 0x1

    const v9, 0x3f19999a    # 0.6f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_0

    .line 57
    :cond_3
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 58
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v8, 0x42580000    # 54.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 59
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 60
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_0

    .line 63
    :cond_4
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    if-nez v2, :cond_5

    .line 64
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8ccccd    # 1.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v8, 0x42580000    # 54.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 65
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 66
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, -0x42333333    # -0.1f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_0

    .line 67
    :cond_5
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 68
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccd    # 0.8f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v8, 0x42580000    # 54.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 69
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 70
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3e99999a    # 0.3f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_0

    .line 71
    :cond_6
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 72
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    const v3, 0x3f333333    # 0.7f

    const v4, 0x3f4ccccd    # 0.8f

    const v5, 0x3f333333    # 0.7f

    const v6, 0x3f4ccccd    # 0.8f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v8, 0x42580000    # 54.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 73
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 74
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3f19999a    # 0.6f

    const/4 v8, 0x1

    const v9, 0x3e99999a    # 0.3f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_0

    .line 75
    :cond_7
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 76
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f19999a    # 0.6f

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3f19999a    # 0.6f

    const/high16 v7, 0x42580000    # 54.0f

    const/high16 v8, 0x42580000    # 54.0f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 77
    .restart local v0    # "scale":Landroid/view/animation/ScaleAnimation;
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    .end local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3e800000    # 0.25f

    invoke-direct {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 78
    .restart local v10    # "alpha":Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, 0x3f8ccccd    # 1.1f

    const/4 v8, 0x1

    const v9, 0x3f4ccccd    # 0.8f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "trans":Landroid/view/animation/TranslateAnimation;
    goto/16 :goto_0

    .line 84
    :cond_8
    iget v2, p1, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    if-nez v2, :cond_9

    const-wide/16 v2, 0x12c

    goto/16 :goto_1

    :cond_9
    const-wide/16 v2, 0x12c

    goto/16 :goto_1
.end method
