.class public final Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper;
.super Ljava/lang/Object;
.source "YoukuPopupHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x4
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final fixPopupWindow(Landroid/widget/PopupWindow;)V
    .locals 6
    .param p0, "window"    # Landroid/widget/PopupWindow;

    .prologue
    .line 69
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_0

    .line 71
    :try_start_0
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "mAnchor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 73
    .local v0, "mAnchorField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "mOnScrollChangedListener"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 76
    .local v2, "mOnScrollChangedListenerField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 78
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 81
    .local v1, "mOnScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    new-instance v3, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;

    invoke-direct {v3, v0, p0, v1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$2;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 100
    .local v3, "newListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v0    # "mAnchorField":Ljava/lang/reflect/Field;
    .end local v1    # "mOnScrollChangedListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .end local v2    # "mOnScrollChangedListenerField":Ljava/lang/reflect/Field;
    .end local v3    # "newListener":Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    :cond_0
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static final getGravity(Landroid/view/View;)I
    .locals 2
    .param p0, "anchor"    # Landroid/view/View;

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 145
    .local v0, "windowWidth":I
    mul-int/lit8 v1, v0, 0x2

    div-int/lit8 v1, v1, 0x5

    invoke-static {p0, v1}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper;->getGravity(Landroid/view/View;I)I

    move-result v1

    return v1
.end method

.method public static final getGravity(Landroid/view/View;I)I
    .locals 11
    .param p0, "anchor"    # Landroid/view/View;
    .param p1, "popupWidth"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 157
    const/4 v6, 0x0

    .line 159
    .local v6, "gravity":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 161
    .local v8, "windowHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 162
    .local v2, "anchorParentWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 163
    .local v3, "anchorWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 164
    .local v0, "anchorHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 167
    .local v1, "anchorLeft":I
    const/4 v9, 0x2

    new-array v7, v9, [I

    .line 168
    .local v7, "location":[I
    invoke-virtual {p0, v7}, Landroid/view/View;->getLocationInWindow([I)V

    .line 169
    const/4 v9, 0x0

    aget v4, v7, v9

    .line 170
    .local v4, "anchorX":I
    const/4 v9, 0x1

    aget v5, v7, v9

    .line 173
    .local v5, "anchorY":I
    div-int/lit8 v9, v2, 0x2

    if-le v1, v9, :cond_1

    add-int v9, v4, v3

    if-le v9, p1, :cond_1

    .line 175
    or-int/lit8 v6, v6, 0x5

    .line 180
    :goto_0
    add-int v9, v5, v0

    div-int/lit8 v10, v8, 0x2

    if-le v9, v10, :cond_2

    .line 181
    or-int/lit8 v6, v6, 0x50

    .line 186
    :goto_1
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-lt v9, v10, :cond_0

    .line 187
    const/high16 v9, 0x800000

    or-int/2addr v6, v9

    .line 190
    :cond_0
    return v6

    .line 177
    :cond_1
    or-int/lit8 v6, v6, 0x3

    goto :goto_0

    .line 183
    :cond_2
    or-int/lit8 v6, v6, 0x30

    goto :goto_1
.end method

.method public static final getPopupPosition(Landroid/view/View;I)[I
    .locals 10
    .param p0, "anchor"    # Landroid/view/View;
    .param p1, "gravity"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 110
    new-array v3, v7, [I

    .line 112
    .local v3, "position":[I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 113
    .local v5, "windowWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 115
    .local v4, "windowHeight":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 116
    .local v1, "anchorWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 118
    .local v0, "anchorHeight":I
    new-array v2, v7, [I

    .line 119
    .local v2, "location":[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 121
    const/4 v6, 0x3

    and-int/lit8 v7, p1, 0x3

    if-ne v6, v7, :cond_2

    .line 122
    aget v6, v2, v8

    aput v6, v3, v8

    .line 127
    :cond_0
    :goto_0
    const/16 v6, 0x30

    and-int/lit8 v7, p1, 0x30

    if-ne v6, v7, :cond_3

    .line 128
    aget v6, v2, v9

    add-int/2addr v6, v0

    aput v6, v3, v9

    .line 133
    :cond_1
    :goto_1
    return-object v3

    .line 123
    :cond_2
    const/4 v6, 0x5

    and-int/lit8 v7, p1, 0x5

    if-ne v6, v7, :cond_0

    .line 124
    aget v6, v2, v8

    sub-int v6, v5, v6

    sub-int/2addr v6, v1

    aput v6, v3, v8

    goto :goto_0

    .line 129
    :cond_3
    const/16 v6, 0x50

    and-int/lit8 v7, p1, 0x50

    if-ne v6, v7, :cond_1

    .line 130
    aget v6, v2, v9

    sub-int v6, v4, v6

    aput v6, v3, v9

    goto :goto_1
.end method

.method public static final newPopInstance(Landroid/content/Context;)Landroid/widget/PopupWindow;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, -0x2

    .line 27
    invoke-static {p0, v0, v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper;->newPopInstance(Landroid/content/Context;II)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public static final newPopInstance(Landroid/content/Context;II)Landroid/widget/PopupWindow;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x1

    .line 34
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 36
    .local v0, "pop":Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper;->fixPopupWindow(Landroid/widget/PopupWindow;)V

    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 39
    invoke-virtual {v0, p2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 41
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 45
    const v1, 0x1030002

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 46
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    new-instance v1, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$1;

    invoke-direct {v1, v0}, Lcom/youku/gamecenter/widgets/youkupopmenu/YoukuPopupHelper$1;-><init>(Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 59
    return-object v0
.end method
