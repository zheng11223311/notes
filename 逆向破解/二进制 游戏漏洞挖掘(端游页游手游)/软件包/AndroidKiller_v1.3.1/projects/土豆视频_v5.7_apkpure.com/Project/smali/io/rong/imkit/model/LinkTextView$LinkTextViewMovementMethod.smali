.class public Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/rong/imkit/model/LinkTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkTextViewMovementMethod"
.end annotation


# static fields
.field private static sInstance:Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;


# instance fields
.field private mLastActionDownTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;->sInstance:Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;

    invoke-direct {v0}, Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;-><init>()V

    sput-object v0, Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;->sInstance:Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;

    .line 64
    :cond_0
    sget-object v0, Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;->sInstance:Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "widget"    # Landroid/widget/TextView;
    .param p2, "buffer"    # Landroid/text/Spannable;
    .param p3, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 71
    .local v2, "action":I
    const/4 v12, 0x1

    if-eq v2, v12, :cond_0

    if-nez v2, :cond_7

    .line 72
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    float-to-int v10, v12

    .line 73
    .local v10, "x":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    float-to-int v11, v12

    .line 75
    .local v11, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v12

    sub-int/2addr v10, v12

    .line 76
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v12

    add-int/2addr v10, v12

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v12

    add-int/2addr v11, v12

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 82
    .local v3, "layout":Landroid/text/Layout;
    invoke-virtual {v3, v11}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v6

    .line 83
    .local v6, "line":I
    int-to-float v12, v10

    invoke-virtual {v3, v6, v12}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v8

    .line 85
    .local v8, "off":I
    const-class v12, Landroid/text/style/ClickableSpan;

    move-object/from16 v0, p2

    invoke-interface {v0, v8, v8, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/ClickableSpan;

    .line 87
    .local v7, "link":[Landroid/text/style/ClickableSpan;
    array-length v12, v7

    if-eqz v12, :cond_6

    .line 88
    const/4 v12, 0x1

    if-ne v2, v12, :cond_5

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 90
    .local v4, "actionUpTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;->mLastActionDownTime:J

    sub-long v12, v4, v12

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v14

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-lez v12, :cond_1

    .line 91
    const/4 v12, 0x1

    .line 109
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v4    # "actionUpTime":J
    .end local v6    # "line":I
    .end local v7    # "link":[Landroid/text/style/ClickableSpan;
    .end local v8    # "off":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :goto_0
    return v12

    .line 93
    .restart local v3    # "layout":Landroid/text/Layout;
    .restart local v4    # "actionUpTime":J
    .restart local v6    # "line":I
    .restart local v7    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v8    # "off":I
    .restart local v10    # "x":I
    .restart local v11    # "y":I
    :cond_1
    const/4 v9, 0x0

    .line 94
    .local v9, "url":Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v7, v12

    instance-of v12, v12, Landroid/text/style/URLSpan;

    if-eqz v12, :cond_2

    .line 95
    const/4 v12, 0x0

    aget-object v12, v7, v12

    check-cast v12, Landroid/text/style/URLSpan;

    invoke-virtual {v12}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v9

    .line 96
    :cond_2
    invoke-static {}, Lio/rong/imkit/model/LinkTextView;->access$000()Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-static {}, Lio/rong/imkit/model/LinkTextView;->access$000()Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;

    move-result-object v12

    invoke-interface {v12, v9}, Lio/rong/imkit/model/LinkTextView$OnLinkClickListener;->onLinkClick(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 97
    const/4 v12, 0x1

    goto :goto_0

    .line 99
    :cond_3
    const/4 v12, 0x0

    aget-object v12, v7, v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 103
    .end local v4    # "actionUpTime":J
    .end local v9    # "url":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v12, 0x1

    goto :goto_0

    .line 100
    :cond_5
    if-nez v2, :cond_4

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Lio/rong/imkit/model/LinkTextView$LinkTextViewMovementMethod;->mLastActionDownTime:J

    goto :goto_1

    .line 105
    :cond_6
    invoke-static/range {p1 .. p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    .line 106
    const/4 v12, 0x0

    goto :goto_0

    .line 109
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v6    # "line":I
    .end local v7    # "link":[Landroid/text/style/ClickableSpan;
    .end local v8    # "off":I
    .end local v10    # "x":I
    .end local v11    # "y":I
    :cond_7
    invoke-static/range {p1 .. p3}, Landroid/text/method/Touch;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v12

    goto :goto_0
.end method
