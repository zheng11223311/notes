.class public Landroid/support/v7/widget/LinearLayoutManager;
.super Landroid/support/v7/widget/RecyclerView$LayoutManager;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;,
        Landroid/support/v7/widget/LinearLayoutManager$RenderState;,
        Landroid/support/v7/widget/LinearLayoutManager$SavedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HORIZONTAL:I = 0x0

.field public static final INVALID_OFFSET:I = -0x80000000

.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "LinearLayoutManager"

.field public static final VERTICAL:I = 0x1


# instance fields
.field private mLastStackFromEnd:Z

.field private mOrientation:I

.field mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

.field private mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

.field private mPendingScrollPosition:I

.field private mPendingScrollPositionOffset:I

.field private mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

.field private mReverseLayout:Z

.field private mShouldReverseLayout:Z

.field private mStackFromEnd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "reverseLayout"    # Z

    .prologue
    const/4 v0, 0x0

    .line 133
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;-><init>()V

    .line 88
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 95
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 102
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 114
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 134
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 135
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 136
    return-void
.end method

.method private convertFocusDirectionToLayoutDirection(I)I
    .locals 4
    .param p1, "focusDirection"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/high16 v1, -0x80000000

    .line 1096
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1117
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :sswitch_1
    move v0, v2

    .line 1100
    goto :goto_0

    .line 1102
    :sswitch_2
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-eq v3, v2, :cond_0

    move v0, v1

    .line 1103
    goto :goto_0

    .line 1105
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1108
    :sswitch_4
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-eqz v2, :cond_0

    move v0, v1

    .line 1109
    goto :goto_0

    .line 1111
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 1112
    goto :goto_1

    .line 1096
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method private fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 16
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "renderState"    # Landroid/support/v7/widget/LinearLayoutManager$RenderState;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "stopOnFocusable"    # Z

    .prologue
    .line 989
    move-object/from16 v0, p2

    iget v14, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    .line 990
    .local v14, "start":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_1

    .line 992
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    if-gez v2, :cond_0

    .line 993
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    add-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    .line 995
    :cond_0
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByRenderState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;)V

    .line 997
    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mExtra:I

    add-int v12, v2, v4

    .line 998
    .local v12, "remainingSpace":I
    :cond_2
    if-lez v12, :cond_3

    invoke-virtual/range {p2 .. p3}, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->hasMore(Landroid/support/v7/widget/RecyclerView$State;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1082
    :cond_3
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    sub-int v2, v14, v2

    return v2

    .line 999
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->next(Landroid/support/v7/widget/RecyclerView$Recycler;)Landroid/view/View;

    move-result-object v3

    .line 1000
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1008
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 1009
    .local v11, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-object v2, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrapList:Ljava/util/List;

    if-nez v2, :cond_5

    .line 1010
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    .line 1011
    const/4 v5, -0x1

    if-ne v2, v5, :cond_a

    const/4 v2, 0x1

    :goto_1
    if-ne v4, v2, :cond_b

    .line 1012
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;)V

    .line 1017
    :cond_5
    :goto_2
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2, v4}, Landroid/support/v7/widget/LinearLayoutManager;->measureChildWithMargins(Landroid/view/View;II)V

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v9

    .line 1020
    .local v9, "consumed":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    .line 1021
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1022
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingRight()I

    move-result v4

    sub-int v13, v2, v4

    .line 1023
    .local v13, "right":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    sub-int v10, v13, v2

    .line 1028
    .local v10, "left":I
    :goto_3
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_d

    .line 1029
    move-object/from16 v0, p2

    iget v8, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 1030
    .local v8, "bottom":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    sub-int v15, v2, v9

    .line 1049
    .local v15, "top":I
    :goto_4
    iget v2, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int v4, v10, v2

    iget v2, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int v5, v15, v2

    .line 1050
    iget v2, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    sub-int v6, v13, v2

    iget v2, v11, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    sub-int v7, v8, v2

    move-object/from16 v2, p0

    .line 1049
    invoke-virtual/range {v2 .. v7}, Landroid/support/v7/widget/LinearLayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    .line 1056
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    mul-int/2addr v4, v9

    add-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 1058
    invoke-virtual {v11}, Landroid/support/v7/widget/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1059
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    sub-int/2addr v2, v9

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    .line 1061
    sub-int/2addr v12, v9

    .line 1064
    :cond_6
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_8

    .line 1065
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    add-int/2addr v2, v9

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    .line 1066
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    if-gez v2, :cond_7

    .line 1067
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    add-int/2addr v2, v4

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    .line 1069
    :cond_7
    invoke-direct/range {p0 .. p2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleByRenderState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;)V

    .line 1071
    :cond_8
    if-eqz p4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1075
    :cond_9
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    if-ne v2, v4, :cond_2

    goto/16 :goto_0

    .line 1011
    .end local v8    # "bottom":I
    .end local v9    # "consumed":I
    .end local v10    # "left":I
    .end local v13    # "right":I
    .end local v15    # "top":I
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1014
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;->addView(Landroid/view/View;I)V

    goto/16 :goto_2

    .line 1025
    .restart local v9    # "consumed":I
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingLeft()I

    move-result v10

    .line 1026
    .restart local v10    # "left":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int v13, v10, v2

    .restart local v13    # "right":I
    goto/16 :goto_3

    .line 1032
    :cond_d
    move-object/from16 v0, p2

    iget v15, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 1033
    .restart local v15    # "top":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    add-int v8, v2, v9

    .line 1035
    .restart local v8    # "bottom":I
    goto/16 :goto_4

    .line 1036
    .end local v8    # "bottom":I
    .end local v10    # "left":I
    .end local v13    # "right":I
    .end local v15    # "top":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getPaddingTop()I

    move-result v15

    .line 1037
    .restart local v15    # "top":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedMeasurementInOther(Landroid/view/View;)I

    move-result v2

    add-int v8, v15, v2

    .line 1039
    .restart local v8    # "bottom":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_f

    .line 1040
    move-object/from16 v0, p2

    iget v13, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 1041
    .restart local v13    # "right":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    sub-int v10, v2, v9

    .line 1042
    .restart local v10    # "left":I
    goto/16 :goto_4

    .line 1043
    .end local v10    # "left":I
    .end local v13    # "right":I
    :cond_f
    move-object/from16 v0, p2

    iget v10, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 1044
    .restart local v10    # "left":I
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    add-int v13, v2, v9

    .restart local v13    # "right":I
    goto/16 :goto_4
.end method

.method private fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 3
    .param p1, "endOffset"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 611
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 612
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 613
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 614
    neg-int v2, v1

    invoke-direct {p0, v2, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 619
    add-int/2addr p1, v0

    .line 620
    if-eqz p4, :cond_1

    .line 622
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int v1, v2, p1

    .line 623
    if-lez v1, :cond_1

    .line 624
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2, v1}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->offsetChildren(I)V

    .line 625
    add-int v2, v1, v0

    .line 628
    :goto_0
    return v2

    .line 616
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 628
    goto :goto_0
.end method

.method private fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I
    .locals 4
    .param p1, "startOffset"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p4, "canOffsetChildren"    # Z

    .prologue
    .line 636
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 637
    .local v1, "gap":I
    const/4 v0, 0x0

    .line 638
    .local v0, "fixOffset":I
    if-lez v1, :cond_0

    .line 640
    invoke-direct {p0, v1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v2

    neg-int v0, v2

    .line 644
    add-int/2addr p1, v0

    .line 645
    if-eqz p4, :cond_1

    .line 647
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v1, p1, v2

    .line 648
    if-lez v1, :cond_1

    .line 649
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    neg-int v3, v1

    invoke-interface {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->offsetChildren(I)V

    .line 650
    sub-int v2, v0, v1

    .line 653
    :goto_0
    return v2

    .line 642
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v0

    .line 653
    goto :goto_0
.end method

.method private getChildClosestToEnd()Landroid/view/View;
    .locals 1

    .prologue
    .line 1139
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private getChildClosestToStart()Landroid/view/View;
    .locals 1

    .prologue
    .line 1129
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLayoutRTL()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 679
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logChildren()V
    .locals 5

    .prologue
    .line 1277
    const-string v2, "LinearLayoutManager"

    const-string v3, "internal representation of views on the screen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 1283
    const-string v2, "LinearLayoutManager"

    const-string v3, "=============="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    return-void

    .line 1279
    :cond_0
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1280
    .local v0, "child":Landroid/view/View;
    const-string v2, "LinearLayoutManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "item "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", coord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1281
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1280
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private recycleByRenderState(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;)V
    .locals 2
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "renderState"    # Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    .prologue
    .line 967
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 968
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    iget v0, p2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V

    goto :goto_0
.end method

.method private recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V
    .locals 1
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .prologue
    .line 860
    if-ne p2, p3, :cond_1

    .line 875
    :cond_0
    return-void

    .line 866
    :cond_1
    if-le p3, p2, :cond_2

    .line 867
    add-int/lit8 v0, p3, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 868
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 867
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 871
    .end local v0    # "i":I
    :cond_2
    move v0, p2

    .restart local v0    # "i":I
    :goto_1
    if-le v0, p3, :cond_0

    .line 872
    invoke-virtual {p0, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->removeAndRecycleViewAt(ILandroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 871
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private recycleViewsFromEnd(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 925
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 926
    .local v1, "childCount":I
    if-gez p2, :cond_1

    .line 952
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v4

    sub-int v3, v4, p2

    .line 934
    .local v3, "limit":I
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3

    .line 935
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 936
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 937
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_2

    .line 938
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 935
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 943
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    add-int/lit8 v2, v1, -0x1

    .restart local v2    # "i":I
    :goto_2
    if-ltz v2, :cond_0

    .line 944
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 945
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    if-ge v4, v3, :cond_4

    .line 946
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 943
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2
.end method

.method private recycleViewsFromStart(Landroid/support/v7/widget/RecyclerView$Recycler;I)V
    .locals 5
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "dt"    # I

    .prologue
    .line 887
    if-gez p2, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 894
    :cond_1
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v4

    add-int v3, v4, p2

    .line 895
    .local v3, "limit":I
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    .line 896
    .local v1, "childCount":I
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v4, :cond_3

    .line 897
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_0

    .line 898
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 899
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 900
    add-int/lit8 v4, v1, -0x1

    invoke-direct {p0, p1, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 897
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 905
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v1, :cond_0

    .line 906
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 907
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    if-le v4, v3, :cond_4

    .line 908
    const/4 v4, 0x0

    invoke-direct {p0, p1, v4, v2}, Landroid/support/v7/widget/LinearLayoutManager;->recycleChildren(Landroid/support/v7/widget/RecyclerView$Recycler;II)V

    goto :goto_0

    .line 905
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private resolveShouldLayoutReverse()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 265
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->isLayoutRTL()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    .line 270
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    iput-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    goto :goto_0
.end method

.method private scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 7
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 830
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 850
    :cond_0
    :goto_0
    return v4

    .line 833
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureRenderState()V

    .line 834
    if-lez p1, :cond_2

    move v3, v5

    .line 835
    .local v3, "layoutDirection":I
    :goto_1
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 836
    .local v0, "absDy":I
    invoke-direct {p0, v3, v0, v5, p3}, Landroid/support/v7/widget/LinearLayoutManager;->updateRenderState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 837
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget v2, v5, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    .line 838
    .local v2, "freeScroll":I
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    invoke-direct {p0, p2, v5, p3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v5

    add-int v1, v2, v5

    .line 839
    .local v1, "consumed":I
    if-ltz v1, :cond_0

    .line 845
    if-le v0, v1, :cond_3

    mul-int v4, v3, v1

    .line 846
    .local v4, "scrolled":I
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    neg-int v6, v4

    invoke-interface {v5, v6}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->offsetChildren(I)V

    goto :goto_0

    .line 834
    .end local v0    # "absDy":I
    .end local v1    # "consumed":I
    .end local v2    # "freeScroll":I
    .end local v3    # "layoutDirection":I
    .end local v4    # "scrolled":I
    :cond_2
    const/4 v3, -0x1

    goto :goto_1

    .restart local v0    # "absDy":I
    .restart local v1    # "consumed":I
    .restart local v2    # "freeScroll":I
    .restart local v3    # "layoutDirection":I
    :cond_3
    move v4, p1

    .line 845
    goto :goto_2
.end method

.method private updateRenderState(IIZLandroid/support/v7/widget/RecyclerView$State;)V
    .locals 6
    .param p1, "layoutDirection"    # I
    .param p2, "requiredSpace"    # I
    .param p3, "canUseExistingSpace"    # Z
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 798
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v5

    iput v5, v4, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mExtra:I

    .line 799
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput p1, v4, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    .line 801
    if-ne p1, v3, :cond_2

    .line 803
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v0

    .line 805
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_1

    :goto_0
    iput v2, v4, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    .line 807
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 808
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 810
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 811
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v3}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 810
    sub-int v1, v2, v3

    .line 822
    .local v1, "fastScrollSpace":I
    :goto_1
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput p2, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    .line 823
    if-eqz p3, :cond_0

    .line 824
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget v3, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    sub-int/2addr v3, v1

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    .line 826
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput v1, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    .line 827
    return-void

    .end local v1    # "fastScrollSpace":I
    :cond_1
    move v2, v3

    .line 806
    goto :goto_0

    .line 814
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v0

    .line 815
    .restart local v0    # "child":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-boolean v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v5, :cond_3

    :goto_2
    iput v3, v4, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    .line 817
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget v4, v4, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 818
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v3, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 819
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    neg-int v2, v2

    .line 820
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v3}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v3

    .line 819
    add-int v1, v2, v3

    .restart local v1    # "fastScrollSpace":I
    goto :goto_1

    .end local v1    # "fastScrollSpace":I
    :cond_3
    move v3, v2

    .line 816
    goto :goto_2
.end method

.method private updateRenderStateToFillEnd(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x1

    .line 657
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v2

    sub-int/2addr v2, p2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    .line 658
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 661
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 663
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    .line 664
    return-void

    :cond_0
    move v0, v1

    .line 659
    goto :goto_0
.end method

.method private updateRenderStateToFillStart(II)V
    .locals 3
    .param p1, "itemPosition"    # I
    .param p2, "offset"    # I

    .prologue
    const/4 v1, -0x1

    .line 667
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v2}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v2

    sub-int v2, p2, v2

    iput v2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    .line 668
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 669
    iget-object v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v2, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mLayoutDirection:I

    .line 672
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput p2, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 673
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    const/high16 v1, -0x80000000

    iput v1, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    .line 675
    return-void

    :cond_0
    move v0, v1

    .line 670
    goto :goto_0
.end method

.method private validateChildOrder()V
    .locals 11

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1297
    const-string v8, "LinearLayoutManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "validating child count "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v8, v6, :cond_1

    .line 1334
    :cond_0
    return-void

    .line 1301
    :cond_1
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 1302
    .local v2, "lastPos":I
    iget-object v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-virtual {p0, v7}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-interface {v8, v9}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 1303
    .local v3, "lastScreenLoc":I
    iget-boolean v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v8, :cond_5

    .line 1304
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1305
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1306
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1307
    .local v4, "pos":I
    iget-object v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v8, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1308
    .local v5, "screenLoc":I
    if-ge v4, v2, :cond_3

    .line 1309
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1310
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "detected invalid position. loc invalid? "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1311
    if-ge v5, v3, :cond_2

    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1310
    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_2
    move v6, v7

    .line 1311
    goto :goto_1

    .line 1313
    :cond_3
    if-le v5, v3, :cond_4

    .line 1314
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1315
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1304
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1319
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v4    # "pos":I
    .end local v5    # "screenLoc":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 1320
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1321
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 1322
    .restart local v4    # "pos":I
    iget-object v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v8, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v5

    .line 1323
    .restart local v5    # "screenLoc":I
    if-ge v4, v2, :cond_7

    .line 1324
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1325
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "detected invalid position. loc invalid? "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1326
    if-ge v5, v3, :cond_6

    :goto_3
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1325
    invoke-direct {v8, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    move v6, v7

    .line 1326
    goto :goto_3

    .line 1328
    :cond_7
    if-ge v5, v3, :cond_8

    .line 1329
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->logChildren()V

    .line 1330
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "detected invalid location"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1319
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canScrollVertically()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 203
    iget v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeHorizontalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 778
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 760
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 761
    const/4 v0, 0x0

    .line 764
    :cond_0
    :goto_0
    return v0

    .line 763
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 764
    .local v0, "topPosition":I
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .locals 6
    .param p1, "targetPosition"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 361
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_0

    .line 362
    const/4 v2, 0x0

    .line 369
    :goto_0
    return-object v2

    .line 364
    :cond_0
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 365
    .local v1, "firstChildPos":I
    if-ge p1, v1, :cond_1

    move v2, v3

    :cond_1
    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eq v2, v4, :cond_2

    const/4 v0, -0x1

    .line 366
    .local v0, "direction":I
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v2, :cond_3

    .line 367
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .end local v0    # "direction":I
    :cond_2
    move v0, v3

    .line 365
    goto :goto_1

    .line 369
    .restart local v0    # "direction":I
    :cond_3
    new-instance v2, Landroid/graphics/PointF;

    int-to-float v3, v0

    invoke-direct {v2, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0
.end method

.method public computeVerticalScrollExtent(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 769
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 770
    const/4 v0, 0x0

    .line 773
    :cond_0
    :goto_0
    return v0

    .line 772
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 773
    .local v0, "topPosition":I
    iget-boolean v1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 793
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0
.end method

.method createHorizontalOrientationHelper()Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;
    .locals 1

    .prologue
    .line 1524
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$3;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$3;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    return-object v0
.end method

.method createVerticalOrientationHelper()Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;
    .locals 1

    .prologue
    .line 1472
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$2;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager$2;-><init>(Landroid/support/v7/widget/LinearLayoutManager;)V

    return-object v0
.end method

.method ensureRenderState()V
    .locals 2

    .prologue
    .line 683
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    if-nez v0, :cond_0

    .line 684
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$RenderState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$RenderState;)V

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    .line 686
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    if-nez v0, :cond_1

    .line 687
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->createHorizontalOrientationHelper()Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    .line 690
    :cond_1
    return-void

    .line 688
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->createVerticalOrientationHelper()Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-result-object v0

    goto :goto_0
.end method

.method public findFirstCompletelyVisibleItemPosition()I
    .locals 3

    .prologue
    .line 1175
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findFirstVisibleItemPosition()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1160
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findLastCompletelyVisibleItemPosition()I
    .locals 3

    .prologue
    .line 1211
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method public findLastVisibleItemPosition()I
    .locals 3

    .prologue
    .line 1196
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->findOneVisibleChild(IIZ)I

    move-result v0

    return v0
.end method

.method findOneVisibleChild(IIZ)I
    .locals 9
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "completelyVisible"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1215
    iget-object v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v8}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 1216
    .local v6, "start":I
    iget-object v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v8}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 1217
    .local v3, "end":I
    if-le p2, p1, :cond_0

    const/4 v5, 0x1

    .line 1218
    .local v5, "next":I
    :goto_0
    move v4, p1

    .local v4, "i":I
    :goto_1
    if-ne v4, p2, :cond_1

    .line 1232
    :goto_2
    return v7

    .end local v4    # "i":I
    .end local v5    # "next":I
    :cond_0
    move v5, v7

    .line 1217
    goto :goto_0

    .line 1219
    .restart local v4    # "i":I
    .restart local v5    # "next":I
    :cond_1
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1220
    .local v0, "child":Landroid/view/View;
    iget-object v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v8, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 1221
    .local v2, "childStart":I
    iget-object v8, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v8, v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 1222
    .local v1, "childEnd":I
    if-ge v2, v3, :cond_3

    if-le v1, v6, :cond_3

    .line 1223
    if-eqz p3, :cond_2

    .line 1224
    if-lt v2, v6, :cond_3

    if-gt v1, v3, :cond_3

    .line 1225
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    goto :goto_2

    .line 1228
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    goto :goto_2

    .line 1218
    :cond_3
    add-int/2addr v4, v5

    goto :goto_1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 313
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    .line 314
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-object v3

    .line 317
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 318
    .local v1, "firstChild":I
    sub-int v2, p1, v1

    .line 319
    .local v2, "viewPosition":I
    if-ltz v2, :cond_0

    if-ge v2, v0, :cond_0

    .line 320
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 143
    new-instance v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 338
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$State;->hasTargetScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v0}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getTotalSpace()I

    move-result v0

    .line 341
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    return v0
.end method

.method public getReverseLayout()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    return v0
.end method

.method public getStackFromEnd()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    return v0
.end method

.method public onFocusSearchFailed(Landroid/view/View;ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)Landroid/view/View;
    .locals 10
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "focusDirection"    # I
    .param p3, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p4, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    const/4 v9, -0x1

    const/high16 v8, -0x80000000

    const/4 v4, 0x0

    .line 1239
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 1240
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    move-object v2, v4

    .line 1269
    :cond_0
    :goto_0
    return-object v2

    .line 1244
    :cond_1
    invoke-direct {p0, p2}, Landroid/support/v7/widget/LinearLayoutManager;->convertFocusDirectionToLayoutDirection(I)I

    move-result v0

    .line 1245
    .local v0, "layoutDir":I
    if-ne v0, v8, :cond_2

    move-object v2, v4

    .line 1246
    goto :goto_0

    .line 1249
    :cond_2
    if-ne v0, v9, :cond_4

    .line 1250
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v3

    .line 1254
    .local v3, "referenceChild":Landroid/view/View;
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureRenderState()V

    .line 1255
    const v5, 0x3ea8f5c3    # 0.33f

    iget-object v6, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v6}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 1256
    iget-object v7, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v7}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v7

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 1255
    mul-float/2addr v5, v6

    float-to-int v1, v5

    .line 1257
    .local v1, "maxScroll":I
    const/4 v5, 0x0

    invoke-direct {p0, v0, v1, v5, p4}, Landroid/support/v7/widget/LinearLayoutManager;->updateRenderState(IIZLandroid/support/v7/widget/RecyclerView$State;)V

    .line 1258
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    iput v8, v5, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrollingOffset:I

    .line 1259
    iget-object v5, p0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    const/4 v6, 0x1

    invoke-direct {p0, p3, v5, p4, v6}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 1261
    if-ne v0, v9, :cond_5

    .line 1262
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v2

    .line 1266
    .local v2, "nextFocus":Landroid/view/View;
    :goto_2
    if-eq v2, v3, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-nez v5, :cond_0

    :cond_3
    move-object v2, v4

    .line 1267
    goto :goto_0

    .line 1252
    .end local v1    # "maxScroll":I
    .end local v2    # "nextFocus":Landroid/view/View;
    .end local v3    # "referenceChild":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v3

    .restart local v3    # "referenceChild":Landroid/view/View;
    goto :goto_1

    .line 1264
    .restart local v1    # "maxScroll":I
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v2

    .restart local v2    # "nextFocus":Landroid/view/View;
    goto :goto_2
.end method

.method public onLayoutChildren(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 35
    .param p1, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mOrientation:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mReverseLayout:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setReverseLayout(Z)V

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mStackFromEnd:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 395
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->ensureRenderState()V

    .line 397
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->resolveShouldLayoutReverse()V

    .line 400
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_2

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v32, v0

    if-ltz v32, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v32, v0

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_2

    .line 403
    :cond_1
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 404
    const/high16 v32, -0x80000000

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 411
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v33, v0

    xor-int v20, v32, v33

    .line 413
    .local v20, "layoutFromEnd":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v33, v0

    xor-int v29, v32, v33

    .line 416
    .local v29, "stackFromEndChanged":Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v32, v0

    const/16 v33, -0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_17

    .line 419
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 420
    .local v7, "anchorItemPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v32, v0

    if-eqz v32, :cond_a

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    move/from16 v20, v0

    .line 424
    if-eqz v20, :cond_9

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v32

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    move/from16 v33, v0

    .line 425
    sub-int v6, v32, v33

    .line 498
    .local v6, "anchorCoordinate":I
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/LinearLayoutManager;->detachAndScrapAttachedViews(Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 501
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getExtraLayoutSpace(Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v14

    .line 502
    .local v14, "extra":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getTargetScrollPosition()I

    move-result v32

    move/from16 v0, v32

    if-ge v0, v7, :cond_1c

    const/4 v8, 0x1

    .line 503
    .local v8, "before":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v32, v0

    move/from16 v0, v32

    if-ne v8, v0, :cond_1d

    .line 504
    move v15, v14

    .line 505
    .local v15, "extraForEnd":I
    const/16 v16, 0x0

    .line 511
    .local v16, "extraForStart":I
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;->updateRenderStateToFillStart(II)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move/from16 v0, v16

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mExtra:I

    .line 513
    if-nez v20, :cond_3

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 516
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, p2

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    move/from16 v31, v0

    .line 519
    .local v31, "startOffset":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v6}, Landroid/support/v7/widget/LinearLayoutManager;->updateRenderStateToFillEnd(II)V

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput v15, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mExtra:I

    .line 521
    if-eqz v20, :cond_4

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mItemDirection:I

    move/from16 v34, v0

    add-int v33, v33, v34

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 524
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, p2

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 525
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v13, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mOffset:I

    .line 527
    .local v13, "endOffset":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v32

    if-lez v32, :cond_5

    .line 531
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v32, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v33, v0

    xor-int v32, v32, v33

    if-eqz v32, :cond_1e

    .line 532
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v18

    .line 533
    .local v18, "fixOffset":I
    add-int v31, v31, v18

    .line 534
    add-int v13, v13, v18

    .line 535
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v18

    .line 536
    add-int v31, v31, v18

    .line 537
    add-int v13, v13, v18

    .line 552
    .end local v18    # "fixOffset":I
    :cond_5
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v32

    if-lez v32, :cond_8

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v32

    if-nez v32, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v32

    if-eqz v32, :cond_8

    .line 554
    const/16 v26, 0x0

    .local v26, "scrapExtraStart":I
    const/16 v25, 0x0

    .line 555
    .local v25, "scrapExtraEnd":I
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/RecyclerView$Recycler;->getScrapList()Ljava/util/List;

    move-result-object v27

    .line 556
    .local v27, "scrapList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v28

    .line 557
    .local v28, "scrapSize":I
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v17

    .line 558
    .local v17, "firstChildPos":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v28

    if-lt v0, v1, :cond_1f

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrapList:Ljava/util/List;

    .line 575
    if-lez v26, :cond_6

    .line 576
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v5

    .line 577
    .local v5, "anchor":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->updateRenderStateToFillStart(II)V

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move/from16 v0, v26

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mExtra:I

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v32, v0

    if-eqz v32, :cond_23

    const/16 v32, 0x1

    :goto_5
    add-int v32, v32, v34

    move/from16 v0, v32

    move-object/from16 v1, v33

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, p2

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 584
    .end local v5    # "anchor":Landroid/view/View;
    :cond_6
    if-lez v25, :cond_7

    .line 585
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v5

    .line 586
    .restart local v5    # "anchor":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1, v13}, Landroid/support/v7/widget/LinearLayoutManager;->updateRenderStateToFillEnd(II)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    move/from16 v0, v25

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mExtra:I

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mAvailable:I

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v32, v0

    if-eqz v32, :cond_24

    const/16 v32, -0x1

    :goto_6
    add-int v32, v32, v34

    move/from16 v0, v32

    move-object/from16 v1, v33

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mCurrentPosition:I

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v32

    move-object/from16 v3, p2

    move/from16 v4, v33

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fill(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/LinearLayoutManager$RenderState;Landroid/support/v7/widget/RecyclerView$State;Z)I

    .line 593
    .end local v5    # "anchor":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mRenderState:Landroid/support/v7/widget/LinearLayoutManager$RenderState;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/support/v7/widget/LinearLayoutManager$RenderState;->mScrapList:Ljava/util/List;

    .line 596
    .end local v17    # "firstChildPos":I
    .end local v19    # "i":I
    .end local v25    # "scrapExtraEnd":I
    .end local v26    # "scrapExtraStart":I
    .end local v27    # "scrapList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    .end local v28    # "scrapSize":I
    :cond_8
    const/16 v32, -0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 597
    const/high16 v32, -0x80000000

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 598
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    .line 599
    const/16 v32, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 604
    return-void

    .line 428
    .end local v6    # "anchorCoordinate":I
    .end local v8    # "before":Z
    .end local v13    # "endOffset":I
    .end local v14    # "extra":I
    .end local v15    # "extraForEnd":I
    .end local v16    # "extraForStart":I
    .end local v31    # "startOffset":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v32

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    move/from16 v33, v0

    .line 428
    add-int v6, v32, v33

    .line 431
    .restart local v6    # "anchorCoordinate":I
    goto/16 :goto_0

    .end local v6    # "anchorCoordinate":I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v32, v0

    const/high16 v33, -0x80000000

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_15

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v9

    .line 433
    .local v9, "child":Landroid/view/View;
    if-eqz v9, :cond_10

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v32

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v33

    .line 434
    sub-int v30, v32, v33

    .line 436
    .local v30, "startGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v32

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-interface {v0, v9}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v33

    .line 436
    sub-int v12, v32, v33

    .line 438
    .local v12, "endGap":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v10

    .line 439
    .local v10, "childSize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getTotalSpace()I

    move-result v32

    move/from16 v0, v32

    if-le v10, v0, :cond_c

    .line 441
    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 443
    .restart local v6    # "anchorCoordinate":I
    :goto_7
    goto/16 :goto_0

    .line 442
    .end local v6    # "anchorCoordinate":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v6

    goto :goto_7

    .line 443
    :cond_c
    if-gez v30, :cond_d

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 445
    .restart local v6    # "anchorCoordinate":I
    const/16 v20, 0x0

    .line 446
    goto/16 :goto_0

    .end local v6    # "anchorCoordinate":I
    :cond_d
    if-gez v12, :cond_e

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 448
    .restart local v6    # "anchorCoordinate":I
    const/16 v20, 0x1

    .line 449
    goto/16 :goto_0

    .line 450
    .end local v6    # "anchorCoordinate":I
    :cond_e
    if-eqz v20, :cond_f

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 454
    .restart local v6    # "anchorCoordinate":I
    :goto_8
    goto/16 :goto_0

    .line 452
    .end local v6    # "anchorCoordinate":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-interface {v0, v9}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    goto :goto_8

    .line 455
    .end local v10    # "childSize":I
    .end local v12    # "endGap":I
    .end local v30    # "startGap":I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v32

    if-lez v32, :cond_13

    .line 457
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v32

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v21

    .line 458
    .local v21, "pos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_11

    const/16 v32, 0x1

    :goto_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_12

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 460
    .restart local v6    # "anchorCoordinate":I
    const/16 v20, 0x1

    .line 461
    goto/16 :goto_0

    .line 458
    .end local v6    # "anchorCoordinate":I
    :cond_11
    const/16 v32, 0x0

    goto :goto_9

    .line 462
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v6

    .line 463
    .restart local v6    # "anchorCoordinate":I
    const/16 v20, 0x0

    .line 465
    goto/16 :goto_0

    .line 466
    .end local v6    # "anchorCoordinate":I
    .end local v21    # "pos":I
    :cond_13
    if-eqz v20, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 470
    .restart local v6    # "anchorCoordinate":I
    :goto_a
    goto/16 :goto_0

    .line 467
    .end local v6    # "anchorCoordinate":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v6

    goto :goto_a

    .line 472
    .end local v9    # "child":Landroid/view/View;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v32

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v33, v0

    .line 473
    sub-int v6, v32, v33

    .line 475
    .restart local v6    # "anchorCoordinate":I
    const/16 v20, 0x1

    .line 476
    goto/16 :goto_0

    .line 477
    .end local v6    # "anchorCoordinate":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v32

    .line 478
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    move/from16 v33, v0

    .line 477
    add-int v6, v32, v33

    .line 479
    .restart local v6    # "anchorCoordinate":I
    const/16 v20, 0x0

    .line 482
    goto/16 :goto_0

    .end local v6    # "anchorCoordinate":I
    .end local v7    # "anchorItemPosition":I
    :cond_17
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v32

    if-lez v32, :cond_19

    if-nez v29, :cond_19

    .line 483
    if-eqz v20, :cond_18

    .line 484
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v23

    .line 485
    .local v23, "referenceChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 486
    .restart local v6    # "anchorCoordinate":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 487
    .restart local v7    # "anchorItemPosition":I
    goto/16 :goto_0

    .line 488
    .end local v6    # "anchorCoordinate":I
    .end local v7    # "anchorItemPosition":I
    .end local v23    # "referenceChild":Landroid/view/View;
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v23

    .line 489
    .restart local v23    # "referenceChild":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v6

    .line 490
    .restart local v6    # "anchorCoordinate":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 492
    .restart local v7    # "anchorItemPosition":I
    goto/16 :goto_0

    .line 493
    .end local v6    # "anchorCoordinate":I
    .end local v7    # "anchorItemPosition":I
    .end local v23    # "referenceChild":Landroid/view/View;
    :cond_19
    if-eqz v20, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v6

    .line 495
    .restart local v6    # "anchorCoordinate":I
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    move/from16 v32, v0

    if-eqz v32, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v32

    add-int/lit8 v7, v32, -0x1

    .restart local v7    # "anchorItemPosition":I
    :goto_c
    goto/16 :goto_0

    .line 494
    .end local v6    # "anchorCoordinate":I
    .end local v7    # "anchorItemPosition":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v6

    goto :goto_b

    .line 495
    .restart local v6    # "anchorCoordinate":I
    :cond_1b
    const/4 v7, 0x0

    goto :goto_c

    .line 502
    .restart local v7    # "anchorItemPosition":I
    .restart local v14    # "extra":I
    :cond_1c
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 507
    .restart local v8    # "before":Z
    :cond_1d
    move/from16 v16, v14

    .line 508
    .restart local v16    # "extraForStart":I
    const/4 v15, 0x0

    .restart local v15    # "extraForEnd":I
    goto/16 :goto_2

    .line 539
    .restart local v13    # "endOffset":I
    .restart local v31    # "startOffset":I
    :cond_1e
    const/16 v32, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutStartGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v18

    .line 540
    .restart local v18    # "fixOffset":I
    add-int v31, v31, v18

    .line 541
    add-int v13, v13, v18

    .line 542
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v32

    invoke-direct {v0, v13, v1, v2, v3}, Landroid/support/v7/widget/LinearLayoutManager;->fixLayoutEndGap(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Z)I

    move-result v18

    .line 543
    add-int v31, v31, v18

    .line 544
    add-int v13, v13, v18

    goto/16 :goto_3

    .line 559
    .end local v18    # "fixOffset":I
    .restart local v17    # "firstChildPos":I
    .restart local v19    # "i":I
    .restart local v25    # "scrapExtraEnd":I
    .restart local v26    # "scrapExtraStart":I
    .restart local v27    # "scrapList":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    .restart local v28    # "scrapSize":I
    :cond_1f
    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .line 560
    .local v24, "scrap":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual/range {v24 .. v24}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getPosition()I

    move-result v22

    .line 561
    .local v22, "position":I
    move/from16 v0, v22

    move/from16 v1, v17

    if-ge v0, v1, :cond_20

    const/16 v32, 0x1

    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_21

    .line 562
    const/4 v11, -0x1

    .line 563
    .local v11, "direction":I
    :goto_e
    const/16 v32, -0x1

    move/from16 v0, v32

    if-ne v11, v0, :cond_22

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v32

    add-int v26, v26, v32

    .line 558
    :goto_f
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_4

    .line 561
    .end local v11    # "direction":I
    :cond_20
    const/16 v32, 0x0

    goto :goto_d

    .line 562
    :cond_21
    const/4 v11, 0x1

    goto :goto_e

    .line 566
    .restart local v11    # "direction":I
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    move-object/from16 v32, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v33, v0

    invoke-interface/range {v32 .. v33}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedMeasurement(Landroid/view/View;)I

    move-result v32

    add-int v25, v25, v32

    goto :goto_f

    .line 580
    .end local v11    # "direction":I
    .end local v22    # "position":I
    .end local v24    # "scrap":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .restart local v5    # "anchor":Landroid/view/View;
    :cond_23
    const/16 v32, -0x1

    goto/16 :goto_5

    .line 590
    :cond_24
    const/16 v32, 0x1

    goto/16 :goto_6
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 179
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 180
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    .line 181
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 188
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 149
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v3, :cond_0

    .line 150
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2, v3}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/LinearLayoutManager$SavedState;)V

    .line 174
    :goto_0
    return-object v2

    .line 152
    :cond_0
    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    invoke-direct {v2}, Landroid/support/v7/widget/LinearLayoutManager$SavedState;-><init>()V

    .line 153
    .local v2, "state":Landroid/support/v7/widget/LinearLayoutManager$SavedState;
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 154
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mLastStackFromEnd:Z

    iget-boolean v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mShouldReverseLayout:Z

    xor-int v0, v3, v4

    .line 155
    .local v0, "didLayoutFromEnd":Z
    iput-boolean v0, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorLayoutFromEnd:Z

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToEnd()Landroid/view/View;

    move-result-object v1

    .line 158
    .local v1, "refChild":Landroid/view/View;
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v3}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getEndAfterPadding()I

    move-result v3

    .line 159
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4, v1}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 158
    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    .line 160
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 171
    .end local v0    # "didLayoutFromEnd":Z
    .end local v1    # "refChild":Landroid/view/View;
    :goto_1
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mStackFromEnd:Z

    .line 172
    iget-boolean v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    iput-boolean v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mReverseLayout:Z

    .line 173
    iget v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mOrientation:I

    goto :goto_0

    .line 162
    .restart local v0    # "didLayoutFromEnd":Z
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;->getChildClosestToStart()Landroid/view/View;

    move-result-object v1

    .line 163
    .restart local v1    # "refChild":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 164
    iget-object v3, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 165
    iget-object v4, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    invoke-interface {v4}, Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;->getStartAfterPadding()I

    move-result v4

    sub-int/2addr v3, v4

    .line 164
    iput v3, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_1

    .line 168
    .end local v0    # "didLayoutFromEnd":Z
    .end local v1    # "refChild":Landroid/view/View;
    :cond_2
    iput v4, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorPosition:I

    .line 169
    iput v4, v2, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mAnchorOffset:I

    goto :goto_1
.end method

.method public scrollHorizontallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 2
    .param p1, "dx"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 740
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 741
    const/4 v0, 0x0

    .line 743
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public scrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 708
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 709
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 710
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 711
    return-void
.end method

.method public scrollToPositionWithOffset(II)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 728
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPosition:I

    .line 729
    iput p2, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingScrollPositionOffset:I

    .line 730
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    .line 731
    return-void
.end method

.method public scrollVerticallyBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I
    .locals 1
    .param p1, "dy"    # I
    .param p2, "recycler"    # Landroid/support/v7/widget/RecyclerView$Recycler;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 752
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-nez v0, :cond_0

    .line 753
    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->scrollBy(ILandroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 243
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mOrientation:I

    if-eq v0, p1, :cond_1

    .line 248
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput p1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mOrientation:I

    .line 250
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    if-ne p1, v0, :cond_2

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_2
    iput p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientation:I

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mOrientationHelper:Landroid/support/v7/widget/LinearLayoutManager$OrientationHelper;

    .line 255
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setReverseLayout(Z)V
    .locals 1
    .param p1, "reverseLayout"    # Z

    .prologue
    .line 297
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mReverseLayout:Z

    if-eq v0, p1, :cond_0

    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mReverseLayout:Z

    .line 301
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    if-ne p1, v0, :cond_1

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mReverseLayout:Z

    .line 305
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public setStackFromEnd(Z)V
    .locals 1
    .param p1, "stackFromEnd"    # Z

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mStackFromEnd:Z

    if-eq v0, p1, :cond_0

    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mPendingSavedState:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/LinearLayoutManager$SavedState;->mStackFromEnd:Z

    .line 214
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    if-ne v0, p1, :cond_1

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/widget/LinearLayoutManager;->mStackFromEnd:Z

    .line 218
    invoke-virtual {p0}, Landroid/support/v7/widget/LinearLayoutManager;->requestLayout()V

    goto :goto_0
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "state"    # Landroid/support/v7/widget/RecyclerView$State;
    .param p3, "position"    # I

    .prologue
    .line 349
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager$1;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/LinearLayoutManager$1;-><init>(Landroid/support/v7/widget/LinearLayoutManager;Landroid/content/Context;)V

    .line 356
    .local v0, "linearSmoothScroller":Landroid/support/v7/widget/LinearSmoothScroller;
    invoke-virtual {v0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 357
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 358
    return-void
.end method

.method public supportsPredictiveItemAnimations()Z
    .locals 1

    .prologue
    .line 1338
    const/4 v0, 0x1

    return v0
.end method
