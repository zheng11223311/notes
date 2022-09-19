.class public Lio/rong/imkit/widget/AutoGridLayout;
.super Landroid/view/ViewGroup;
.source "AutoGridLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    }
.end annotation


# instance fields
.field mCurrentItemWidth:I

.field mLastOrientation:I

.field private orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Lio/rong/imkit/widget/AutoGridLayout$1;

    invoke-direct {v0, p0}, Lio/rong/imkit/widget/AutoGridLayout$1;-><init>(Lio/rong/imkit/widget/AutoGridLayout;)V

    iput-object v0, p0, Lio/rong/imkit/widget/AutoGridLayout;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lio/rong/imkit/widget/AutoGridLayout;->mCurrentItemWidth:I

    .line 21
    return-void
.end method

.method static synthetic access$000(Lio/rong/imkit/widget/AutoGridLayout;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lio/rong/imkit/widget/AutoGridLayout;

    .prologue
    .line 15
    iget-object v0, p0, Lio/rong/imkit/widget/AutoGridLayout;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 187
    instance-of v0, p1, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lio/rong/imkit/widget/AutoGridLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 192
    new-instance v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;

    invoke-direct {v0, p1}, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 182
    new-instance v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;

    invoke-virtual {p0}, Lio/rong/imkit/widget/AutoGridLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 24
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lio/rong/imkit/widget/AutoGridLayout;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 25
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lio/rong/imkit/widget/AutoGridLayout;->mLastOrientation:I

    .line 26
    invoke-virtual {p0}, Lio/rong/imkit/widget/AutoGridLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lio/rong/imkit/widget/AutoGridLayout;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 28
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 22
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 140
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getChildCount()I

    move-result v5

    .line 141
    .local v5, "count":I
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingLeft()I

    move-result v13

    .line 142
    .local v13, "parentLeft":I
    sub-int v17, p4, p2

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingRight()I

    move-result v18

    sub-int v14, v17, v18

    .line 144
    .local v14, "parentRight":I
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingTop()I

    move-result v15

    .line 145
    .local v15, "parentTop":I
    sub-int v17, p5, p3

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingBottom()I

    move-result v18

    sub-int v12, v17, v18

    .line 147
    .local v12, "parentBottom":I
    move v7, v13

    .line 148
    .local v7, "currentLeft":I
    move v8, v15

    .line 149
    .local v8, "currentTop":I
    move v6, v15

    .line 151
    .local v6, "currentBottom":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 152
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lio/rong/imkit/widget/AutoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 153
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 154
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;

    .line 156
    .local v11, "lp":Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 157
    .local v16, "width":I
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 162
    .local v9, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/imkit/widget/AutoGridLayout;->mCurrentItemWidth:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    div-int/lit8 v17, v17, 0x2

    add-int v3, v7, v17

    .line 163
    .local v3, "childLeft":I
    iget v0, v11, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v4, v8, v17

    .line 165
    .local v4, "childTop":I
    add-int v17, v3, v16

    move/from16 v0, v17

    if-le v0, v14, :cond_0

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/imkit/widget/AutoGridLayout;->mCurrentItemWidth:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    div-int/lit8 v17, v17, 0x2

    add-int v3, v13, v17

    .line 167
    move v7, v13

    .line 168
    iget v0, v11, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->topMargin:I

    move/from16 v17, v0

    add-int v4, v6, v17

    .line 169
    move v8, v6

    .line 171
    :cond_0
    const-string v17, "View"

    const-string v18, "left:%1$d top:%2$d right:%3$d bottom:%4$d"

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    add-int v21, v3, v16

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x3

    add-int v21, v4, v9

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    add-int v17, v3, v16

    add-int v18, v4, v9

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 173
    move-object/from16 v0, p0

    iget v0, v0, Lio/rong/imkit/widget/AutoGridLayout;->mCurrentItemWidth:I

    move/from16 v17, v0

    add-int v7, v7, v17

    .line 174
    add-int v17, v4, v9

    iget v0, v11, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 151
    .end local v3    # "childLeft":I
    .end local v4    # "childTop":I
    .end local v9    # "height":I
    .end local v11    # "lp":Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    .end local v16    # "width":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 179
    .end local v2    # "child":Landroid/view/View;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 47
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getChildCount()I

    move-result v13

    .line 49
    .local v13, "count":I
    const/16 v20, 0x0

    .line 50
    .local v20, "maxHeight":I
    const/16 v21, 0x0

    .line 51
    .local v21, "maxWidth":I
    const/4 v11, 0x0

    .line 53
    .local v11, "childState":I
    const/4 v15, 0x0

    .line 54
    .local v15, "currentWidth":I
    const/4 v14, 0x0

    .line 56
    .local v14, "currentHeight":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 58
    .local v22, "vWidth":I
    if-lez v13, :cond_2

    .line 59
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lio/rong/imkit/widget/AutoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 60
    .local v3, "view":Landroid/view/View;
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lio/rong/imkit/widget/AutoGridLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 62
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;

    .line 64
    .local v19, "lp":Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    const/4 v2, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, v19

    iget v6, v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    move-object/from16 v0, v19

    iget v6, v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lio/rong/imkit/widget/AutoGridLayout;->mCurrentItemWidth:I

    .line 65
    const/16 v17, 0x0

    .line 67
    .local v17, "itemCount":I
    if-nez v22, :cond_1

    .line 68
    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lio/rong/imkit/widget/AutoGridLayout;->resolveSize(II)I

    move-result v2

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1}, Lio/rong/imkit/widget/AutoGridLayout;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lio/rong/imkit/widget/AutoGridLayout;->setMeasuredDimension(II)V

    .line 136
    .end local v3    # "view":Landroid/view/View;
    .end local v17    # "itemCount":I
    .end local v19    # "lp":Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    :cond_0
    return-void

    .line 72
    .restart local v3    # "view":Landroid/view/View;
    .restart local v17    # "itemCount":I
    .restart local v19    # "lp":Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    :cond_1
    add-int/lit8 v17, v17, 0x1

    div-int v2, v22, v17

    move-object/from16 v0, p0

    iget v4, v0, Lio/rong/imkit/widget/AutoGridLayout;->mCurrentItemWidth:I

    if-gt v2, v4, :cond_1

    .line 76
    add-int/lit8 v17, v17, -0x1

    div-int v2, v22, v17

    move-object/from16 v0, p0

    iput v2, v0, Lio/rong/imkit/widget/AutoGridLayout;->mCurrentItemWidth:I

    .line 80
    .end local v3    # "view":Landroid/view/View;
    .end local v17    # "itemCount":I
    .end local v19    # "lp":Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    :cond_2
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v0, v13, :cond_4

    .line 81
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/AutoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 82
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_3

    .line 84
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p1

    move/from16 v8, p2

    invoke-virtual/range {v4 .. v9}, Lio/rong/imkit/widget/AutoGridLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 85
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;

    .line 86
    .restart local v19    # "lp":Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v2, v0, Lio/rong/imkit/widget/AutoGridLayout;->mCurrentItemWidth:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    move-object/from16 v0, v19

    iget v6, v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    move-object/from16 v0, v19

    iget v6, v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v6

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 87
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v19

    iget v4, v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 89
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v19

    iget v4, v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;->bottomMargin:I

    add-int v18, v2, v4

    .line 91
    .local v18, "itemHeight":I
    add-int v15, v15, v21

    .line 93
    move/from16 v0, v22

    if-le v15, v0, :cond_3

    .line 94
    move/from16 v15, v21

    .line 95
    add-int v14, v14, v18

    .line 80
    .end local v18    # "itemHeight":I
    .end local v19    # "lp":Lio/rong/imkit/widget/AutoGridLayout$LayoutParams;
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 100
    .end local v5    # "child":Landroid/view/View;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    add-int v21, v21, v2

    .line 102
    add-int v2, v14, v20

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 104
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, v20

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 105
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v21

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 107
    move/from16 v0, v21

    move/from16 v1, p1

    invoke-static {v0, v1}, Lio/rong/imkit/widget/AutoGridLayout;->resolveSize(II)I

    move-result v2

    move/from16 v0, v20

    move/from16 v1, p2

    invoke-static {v0, v1}, Lio/rong/imkit/widget/AutoGridLayout;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lio/rong/imkit/widget/AutoGridLayout;->setMeasuredDimension(II)V

    .line 109
    if-lez v13, :cond_0

    .line 110
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_0

    .line 111
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lio/rong/imkit/widget/AutoGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 113
    .restart local v5    # "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 117
    .local v19, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 118
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 125
    .local v12, "childWidthMeasureSpec":I
    :goto_2
    move-object/from16 v0, v19

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_6

    .line 126
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getMeasuredHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 133
    .local v10, "childHeightMeasureSpec":I
    :goto_3
    invoke-virtual {v5, v12, v10}, Landroid/view/View;->measure(II)V

    .line 110
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 121
    .end local v10    # "childHeightMeasureSpec":I
    .end local v12    # "childWidthMeasureSpec":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Lio/rong/imkit/widget/AutoGridLayout;->getChildMeasureSpec(III)I

    move-result v12

    .restart local v12    # "childWidthMeasureSpec":I
    goto :goto_2

    .line 129
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lio/rong/imkit/widget/AutoGridLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v19

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Lio/rong/imkit/widget/AutoGridLayout;->getChildMeasureSpec(III)I

    move-result v10

    .restart local v10    # "childHeightMeasureSpec":I
    goto :goto_3
.end method
