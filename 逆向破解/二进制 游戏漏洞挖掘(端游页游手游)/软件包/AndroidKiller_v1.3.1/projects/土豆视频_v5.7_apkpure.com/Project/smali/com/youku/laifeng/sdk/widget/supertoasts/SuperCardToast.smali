.class public Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
.super Ljava/lang/Object;
.source "SuperCardToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;
    }
.end annotation


# static fields
.field private static final BUNDLE_TAG:Ljava/lang/String; = "0x532e432e542e"

.field private static final ERROR_ACTIVITYNULL:Ljava/lang/String; = " - You cannot pass a null Activity as a parameter."

.field private static final ERROR_CONTAINERNULL:Ljava/lang/String; = " - You must have a LinearLayout with the id of card_container in your layout!"

.field private static final ERROR_NOTBUTTONTYPE:Ljava/lang/String; = " is only compatible with BUTTON type SuperCardToasts."

.field private static final ERROR_NOTPROGRESSHORIZONTALTYPE:Ljava/lang/String; = " is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

.field private static final ERROR_VIEWCONTAINERNULL:Ljava/lang/String; = " - Either the View or Container was null when trying to dismiss."

.field private static final MANAGER_TAG:Ljava/lang/String; = "SuperCardToast Manager"

.field private static final TAG:Ljava/lang/String; = "SuperCardToast"

.field private static final WARNING_PREHONEYCOMB:Ljava/lang/String; = "Swipe to dismiss was enabled but the SDK version is pre-Honeycomb"


# instance fields
.field private isProgressIndeterminate:Z

.field private mActivity:Landroid/app/Activity;

.field private mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

.field private mBackground:I

.field private mButton:Landroid/widget/Button;

.field private mButtonIcon:I

.field private mButtonListener:Landroid/view/View$OnClickListener;

.field private mButtonTypefaceStyle:I

.field private mDividerColor:I

.field private mDividerView:Landroid/view/View;

.field private mDuration:I

.field private mHandler:Landroid/os/Handler;

.field private final mHideImmediateRunnable:Ljava/lang/Runnable;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private final mHideWithAnimationRunnable:Ljava/lang/Runnable;

.field private mIcon:I

.field private mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

.field private final mInvalidateRunnable:Ljava/lang/Runnable;

.field private mIsIndeterminate:Z

.field private mIsSwipeDismissible:Z

.field private mIsTouchDismissible:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMessageTextView:Landroid/widget/TextView;

.field private mOnClickWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

.field private mOnClickWrapperTag:Ljava/lang/String;

.field private mOnDismissWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

.field private mOnDismissWrapperTag:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mToastView:Landroid/view/View;

.field private mToken:Landroid/os/Parcelable;

.field private mTouchDismissListener:Landroid/view/View$OnTouchListener;

.field private mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

.field private mTypeface:I

.field private mViewGroup:Landroid/view/ViewGroup;

.field private showImmediate:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 97
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDuration:I

    .line 99
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mBackground:I

    .line 100
    iput v4, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTypeface:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 102
    sget v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 103
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerColor:I

    .line 113
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1547
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1561
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1575
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1589
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1988
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 2015
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 127
    if-nez p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 134
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 136
    const-string v0, "layout_inflater"

    .line 137
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 140
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "card_container"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 142
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You must have a LinearLayout with the id of card_container in your layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 149
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 151
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 152
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "message_textview"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 155
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "root_layout"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 157
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;I)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "referenceHolder"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;
    .param p3, "wrappers"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;
    .param p4, "position"    # I

    .prologue
    const/4 v6, 0x1

    .line 1903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 97
    const/16 v3, 0x7d0

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDuration:I

    .line 99
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v3

    const-string v4, "drawable"

    const-string v5, "background_standard_gray"

    invoke-static {v3, v4, v5}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mBackground:I

    .line 100
    const/4 v3, 0x0

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTypeface:I

    .line 101
    iput v6, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 102
    sget v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 103
    const v3, -0xbbbbbc

    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerColor:I

    .line 113
    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1547
    new-instance v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1561
    new-instance v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1575
    new-instance v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1589
    new-instance v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1988
    new-instance v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 2015
    new-instance v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 1907
    iget-object v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v3, v4, :cond_1

    .line 1909
    new-instance v2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    invoke-direct {v2, p1, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;)V

    .line 1910
    .local v2, "superCardToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    iget-object v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setButtonText(Ljava/lang/CharSequence;)V

    .line 1911
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextSize:F

    invoke-direct {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setButtonTextSizeFloat(F)V

    .line 1912
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTextColor:I

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setButtonTextColor(I)V

    .line 1913
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonIcon:I

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setButtonIcon(I)V

    .line 1914
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonDivider:I

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setDividerColor(I)V

    .line 1915
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mButtonTypefaceStyle:I

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setButtonTypefaceStyle(I)V

    .line 1917
    if-eqz p3, :cond_4

    .line 1919
    invoke-virtual {p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;->getOnClickWrappers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    .line 1921
    .local v0, "onClickWrapper":Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;
    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1923
    iget-object v4, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    invoke-virtual {v2, v0, v4}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setOnClickWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1930
    .end local v0    # "onClickWrapper":Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;
    .end local v2    # "superCardToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    :cond_1
    iget-object v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v3, v4, :cond_3

    .line 1985
    :cond_2
    :goto_1
    return-void

    .line 1936
    :cond_3
    iget-object v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v3, v4, :cond_2

    .line 1944
    new-instance v2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {v2, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;)V

    .line 1948
    .restart local v2    # "superCardToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    :cond_4
    if-eqz p3, :cond_6

    .line 1950
    invoke-virtual {p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;->getOnDismissWrappers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    .line 1952
    .local v1, "onDismissListenerWrapper":Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;
    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1954
    invoke-virtual {v2, v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setOnDismissWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;)V

    goto :goto_2

    .line 1961
    .end local v1    # "onDismissListenerWrapper":Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;
    :cond_6
    iget-object v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V

    .line 1962
    iget-object v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setText(Ljava/lang/CharSequence;)V

    .line 1963
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTypefaceStyle:I

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setTypefaceStyle(I)V

    .line 1964
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mDuration:I

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setDuration(I)V

    .line 1965
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTextColor:I

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setTextColor(I)V

    .line 1966
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mTextSize:F

    invoke-direct {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setTextSizeFloat(F)V

    .line 1967
    iget-boolean v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsIndeterminate:Z

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setIndeterminate(Z)V

    .line 1968
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIcon:I

    iget-object v4, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v2, v3, v4}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setIcon(ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;)V

    .line 1969
    iget v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mBackground:I

    invoke-virtual {v2, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setBackground(I)V

    .line 1972
    iget-boolean v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsTouchDismissible:Z

    if-eqz v3, :cond_8

    .line 1974
    invoke-virtual {v2, v6}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setTouchToDismiss(Z)V

    .line 1982
    :cond_7
    :goto_3
    invoke-virtual {v2, v6}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setShowImmediate(Z)V

    .line 1983
    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->show()V

    goto :goto_1

    .line 1976
    :cond_8
    iget-boolean v3, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;->mIsSwipeDismissible:Z

    if-eqz v3, :cond_7

    .line 1978
    invoke-virtual {v2, v6}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setSwipeToDismiss(Z)V

    goto :goto_3
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .prologue
    const/4 v4, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 97
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDuration:I

    .line 99
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mBackground:I

    .line 100
    iput v4, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTypeface:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 102
    sget v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 103
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerColor:I

    .line 113
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1547
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1561
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1575
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1589
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1988
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 2015
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 211
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 218
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 220
    const-string v0, "layout_inflater"

    .line 221
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 224
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "card_container"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 226
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 228
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You must have a LinearLayout with the id of card_container in your layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 235
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast_button"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 237
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 238
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "button"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    .line 240
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "divider"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerView:Landroid/view/View;

    .line 242
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 268
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "message_textview"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 271
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "root_layout"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 273
    return-void

    .line 244
    :cond_2
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 247
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast_progresscircle"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 250
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "progress_bar"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 252
    :cond_3
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_4

    .line 254
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 255
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast_progresshorizontal"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 258
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "progress_bar"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    .line 262
    :cond_4
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 263
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;
    .param p3, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    const/4 v4, 0x0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 97
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDuration:I

    .line 99
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mBackground:I

    .line 100
    iput v4, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTypeface:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 102
    sget v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 103
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerColor:I

    .line 113
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1547
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1561
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1575
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1589
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1988
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 2015
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 285
    if-nez p1, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 292
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 294
    const-string v0, "layout_inflater"

    .line 295
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 298
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "card_container"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 300
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You must have a LinearLayout with the id of card_container in your layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 309
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast_button"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 311
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 312
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "button"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    .line 314
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "divider"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerView:Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 342
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "message_textview"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    .line 344
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 345
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "root_layout"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 347
    invoke-direct {p0, p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V

    .line 349
    return-void

    .line 318
    :cond_2
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 321
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast_progresscircle"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 323
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 324
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "progress_bar"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    .line 326
    :cond_3
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 329
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast_progresshorizontal"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 331
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 332
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "progress_bar"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    .line 336
    :cond_4
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 337
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    const/4 v4, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 97
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDuration:I

    .line 99
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mBackground:I

    .line 100
    iput v4, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTypeface:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 102
    sget v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 103
    const v0, -0xbbbbbc

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerColor:I

    .line 113
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1547
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$6;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    .line 1561
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$7;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    .line 1575
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$8;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    .line 1589
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$9;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    .line 1988
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$10;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 2015
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$11;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 168
    if-nez p1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 175
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 177
    const-string v0, "layout_inflater"

    .line 178
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 181
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "card_container"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 183
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperCardToast - You must have a LinearLayout with the id of card_container in your layout!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 190
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supercardtoast"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 192
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 193
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string v3, "message_textview"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    .line 195
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 196
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "id"

    const-string/jumbo v3, "root_layout"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 198
    invoke-direct {p0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mInvalidateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideImmediateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getToken()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getDismissListenerTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V
    .locals 0
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->dismissWithLayoutAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnClickWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToken:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getOnClickWrapperTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cancelAllSuperCardToasts()V
    .locals 1

    .prologue
    .line 1807
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->cancelAllSuperActivityToasts()V

    .line 1809
    return-void
.end method

.method private checkForKitKatBackgrounds(I)I
    .locals 3
    .param p1, "background"    # I

    .prologue
    .line 638
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_black"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 640
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_black"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 672
    .end local p1    # "background":I
    :cond_0
    :goto_0
    return p1

    .line 642
    .restart local p1    # "background":I
    :cond_1
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_blue"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 644
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_blue"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 646
    :cond_2
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 648
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_gray"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 650
    :cond_3
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_green"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 652
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_green"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 654
    :cond_4
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_orange"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 656
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_orange"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 658
    :cond_5
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_purple"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 660
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_purple"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_0

    .line 662
    :cond_6
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_red"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_7

    .line 664
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_red"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_0

    .line 666
    :cond_7
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_kitkat_white"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 668
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "background_standard_white"

    invoke-static {v0, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    goto/16 :goto_0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I

    .prologue
    .line 1742
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;)V

    .line 1743
    .local v0, "superCardToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setText(Ljava/lang/CharSequence;)V

    .line 1744
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setDuration(I)V

    .line 1746
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "animations"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .prologue
    .line 1766
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;)V

    .line 1767
    .local v0, "superCardToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setText(Ljava/lang/CharSequence;)V

    .line 1768
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setDuration(I)V

    .line 1769
    invoke-virtual {v0, p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V

    .line 1771
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;ILcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    .line 1791
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;)V

    .line 1792
    .local v0, "superCardToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setText(Ljava/lang/CharSequence;)V

    .line 1793
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setDuration(I)V

    .line 1794
    invoke-direct {v0, p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V

    .line 1796
    return-object v0
.end method

.method private dismissWithAnimation()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getDismissAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 963
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$5;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$5;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1000
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1002
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1006
    :cond_0
    return-void
.end method

.method private dismissWithLayoutAnimation()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 899
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 901
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 904
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 906
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 907
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x10e0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 909
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$3;

    invoke-direct {v3, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$3;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 921
    new-instance v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$4;

    invoke-direct {v3, p0, v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$4;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 947
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 955
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "originalHeight":I
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->dismissImmediately()V

    goto :goto_0
.end method

.method private getDismissAnimation()Landroid/view/animation/Animation;
    .locals 13

    .prologue
    .line 1668
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FLYIN:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_0

    .line 1670
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1674
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1676
    .local v11, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1677
    .local v12, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1678
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1679
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1680
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1721
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :goto_0
    return-object v12

    .line 1684
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    :cond_0
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->SCALE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_1

    .line 1686
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f666666    # 0.9f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1689
    .local v1, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1691
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1692
    .restart local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1693
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1694
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1695
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 1699
    .end local v1    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_1
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->POPUP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_2

    .line 1701
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v10, 0x3dcccccd    # 0.1f

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1705
    .restart local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1707
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v12, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1708
    .restart local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1709
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1710
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1711
    const-wide/16 v2, 0xfa

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 1717
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v12    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1718
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1719
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v11, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v12, v11

    .line 1721
    goto/16 :goto_0
.end method

.method private getDismissListenerTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnDismissWrapperTag:Ljava/lang/String;

    return-object v0
.end method

.method private getOnClickWrapperTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnClickWrapperTag:Ljava/lang/String;

    return-object v0
.end method

.method private getShowAnimation()Landroid/view/animation/Animation;
    .locals 14

    .prologue
    .line 1606
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FLYIN:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_0

    .line 1608
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1612
    .local v0, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1614
    .local v11, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1615
    .local v13, "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1616
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1617
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1618
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1659
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :goto_0
    return-object v13

    .line 1622
    :cond_0
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->SCALE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_1

    .line 1624
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const v2, 0x3f666666    # 0.9f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1627
    .local v1, "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1629
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1630
    .restart local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1631
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1632
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1633
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 1637
    .end local v1    # "scaleAnimation":Landroid/view/animation/ScaleAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_1
    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    move-result-object v2

    sget-object v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->POPUP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v2, v3, :cond_2

    .line 1639
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, 0x3dcccccd    # 0.1f

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1643
    .restart local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v11, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1645
    .restart local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v13, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1646
    .restart local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1647
    invoke-virtual {v13, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1648
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1649
    const-wide/16 v2, 0xfa

    invoke-virtual {v13, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    goto :goto_0

    .line 1655
    .end local v0    # "translateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v11    # "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    .end local v13    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v12, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1656
    .local v12, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v12, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1657
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v12, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-object v13, v12

    .line 1659
    goto/16 :goto_0
.end method

.method private getToken()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToken:Landroid/os/Parcelable;

    return-object v0
.end method

.method public static onRestoreState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1844
    if-nez p0, :cond_1

    .line 1865
    :cond_0
    return-void

    .line 1849
    :cond_1
    const-string v3, "0x532e432e542e"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1851
    .local v2, "savedArray":[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 1853
    .local v0, "i":I
    if-eqz v2, :cond_0

    .line 1855
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 1857
    .local v1, "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v0, v0, 0x1

    .line 1859
    new-instance v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    check-cast v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;

    .end local v1    # "parcelable":Landroid/os/Parcelable;
    const/4 v6, 0x0

    invoke-direct {v5, p1, v1, v6, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;I)V

    .line 1855
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static onRestoreState(Landroid/os/Bundle;Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;)V
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wrappers"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;

    .prologue
    .line 1877
    if-nez p0, :cond_1

    .line 1898
    :cond_0
    return-void

    .line 1882
    :cond_1
    const-string v3, "0x532e432e542e"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1884
    .local v2, "savedArray":[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 1886
    .local v0, "i":I
    if-eqz v2, :cond_0

    .line 1888
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 1890
    .local v1, "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v0, v0, 0x1

    .line 1892
    new-instance v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    check-cast v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;

    .end local v1    # "parcelable":Landroid/os/Parcelable;
    invoke-direct {v5, p1, v1, p2, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;-><init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;I)V

    .line 1888
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static onSaveState(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1819
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->getList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;

    .line 1822
    .local v1, "list":[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->getList()Ljava/util/LinkedList;

    move-result-object v2

    .line 1824
    .local v2, "lister":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1826
    new-instance v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;

    invoke-direct {v4, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$ReferenceHolder;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    aput-object v4, v1, v0

    .line 1824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1830
    :cond_0
    const-string v3, "0x532e432e542e"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1832
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->cancelAllSuperCardToasts()V

    .line 1834
    return-void
.end method

.method private setButtonTextSizeFloat(F)V
    .locals 2
    .param p1, "buttonTextSize"    # F

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 1322
    return-void
.end method

.method private setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V
    .locals 2
    .param p1, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    .line 1530
    iget-object v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->animations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V

    .line 1531
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->typefaceStyle:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setTypefaceStyle(I)V

    .line 1532
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setTextColor(I)V

    .line 1533
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setBackground(I)V

    .line 1535
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v0, v1, :cond_0

    .line 1537
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setDividerColor(I)V

    .line 1538
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->buttonTextColor:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->setButtonTextColor(I)V

    .line 1542
    :cond_0
    return-void
.end method

.method private setTextSizeFloat(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 501
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 503
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 852
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->remove(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    .line 854
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->dismissWithAnimation()V

    .line 856
    return-void
.end method

.method public dismissImmediately()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 863
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->remove(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    .line 865
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 868
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideWithAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 869
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 875
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 877
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnDismissWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnDismissWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    invoke-virtual {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;->onDismiss(Landroid/view/View;)V

    .line 883
    :cond_1
    iput-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    .line 891
    :cond_2
    :goto_0
    return-void

    .line 887
    :cond_3
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "SuperCardToast"

    const-string v1, " - Either the View or Container was null when trying to dismiss."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    return-object v0
.end method

.method public getBackgroundResource()I
    .locals 1

    .prologue
    .line 685
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mBackground:I

    return v0
.end method

.method public getButtonIcon()I
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonIcon:I

    return v0
.end method

.method public getButtonText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1207
    :goto_0
    return-object v0

    .line 1205
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperCardToast"

    const-string v1, "getButtonText() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getButtonTextColor()I
    .locals 2

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1281
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v0

    .line 1287
    :goto_0
    return v0

    .line 1285
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperCardToast"

    const-string v1, "getButtonTextColor() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTextSize()F
    .locals 2

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    .line 1340
    :goto_0
    return v0

    .line 1338
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperCardToast"

    const-string v1, "getButtonTextSize() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTypefaceStyle()I
    .locals 1

    .prologue
    .line 1245
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 1165
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerColor:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 534
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDuration:I

    return v0
.end method

.method public getIconPosition()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIcon:I

    return v0
.end method

.method public getMaxProgress()I
    .locals 2

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 1428
    :goto_0
    return v0

    .line 1426
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperCardToast"

    const-string v1, "getMaxProgress() is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    goto :goto_0
.end method

.method protected getOnDismissWrapper()Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnDismissWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1378
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1384
    :goto_0
    return v0

    .line 1382
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperCardToast"

    const-string v1, "ProgressBar is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressIndeterminate()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->isProgressIndeterminate:Z

    return v0
.end method

.method public getShowImmediate()Z
    .locals 1

    .prologue
    .line 728
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->showImmediate:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getType()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTypeface:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1488
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 556
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIsIndeterminate:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSwipeDismissible()Z
    .locals 1

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIsSwipeDismissible:Z

    return v0
.end method

.method public isTouchDismissible()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIsTouchDismissible:Z

    return v0
.end method

.method public setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V
    .locals 0
    .param p1, "animations"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 698
    return-void
.end method

.method public setBackground(I)V
    .locals 2
    .param p1, "background"    # I

    .prologue
    .line 625
    invoke-direct {p0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->checkForKitKatBackgrounds(I)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mBackground:I

    .line 627
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mRootLayout:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 629
    return-void
.end method

.method public setButtonIcon(I)V
    .locals 3
    .param p1, "buttonIcon"    # I

    .prologue
    const/4 v2, 0x0

    .line 1076
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1078
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setButtonIcon() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 1084
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1086
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 1087
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1086
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1091
    :cond_1
    return-void
.end method

.method public setButtonIcon(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "buttonIcon"    # I
    .param p2, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 1102
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1104
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setButtonIcon() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_0
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonIcon:I

    .line 1110
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 1113
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1112
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1115
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    :cond_1
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1179
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setButtonText() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1185
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1189
    :cond_1
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 2
    .param p1, "buttonTextColor"    # I

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1259
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setButtonTextColor() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1265
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1269
    :cond_1
    return-void
.end method

.method public setButtonTextSize(I)V
    .locals 2
    .param p1, "buttonTextSize"    # I

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1303
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setButtonTextSize() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1309
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 1313
    :cond_1
    return-void
.end method

.method public setButtonTypefaceStyle(I)V
    .locals 2
    .param p1, "typefaceStyle"    # I

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1223
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setButtonTypefaceStyle() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 1229
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButtonTypefaceStyle:I

    .line 1231
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1235
    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2
    .param p1, "dividerColor"    # I

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1143
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setDivider() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_0
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerColor:I

    .line 1149
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1155
    :cond_1
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 523
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDuration:I

    .line 525
    return-void
.end method

.method public setIcon(ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;)V
    .locals 3
    .param p1, "icon"    # I
    .param p2, "iconPosition"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .prologue
    const/4 v2, 0x0

    .line 568
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIcon:I

    .line 569
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 571
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_1

    .line 573
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 574
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 579
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 578
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 581
    :cond_2
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_3

    .line 583
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 584
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 583
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 586
    :cond_3
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->TOP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mActivity:Landroid/app/Activity;

    .line 589
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 588
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 545
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIsIndeterminate:Z

    .line 547
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 2
    .param p1, "maxProgress"    # I

    .prologue
    .line 1398
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1400
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setMaxProgress() is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1410
    :cond_1
    return-void
.end method

.method public setOnClickWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;)V
    .locals 2
    .param p1, "onClickWrapper"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1018
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setOnClickListenerWrapper() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnClickWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    .line 1023
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnClickWrapperTag:Ljava/lang/String;

    .line 1025
    return-void
.end method

.method public setOnClickWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "onClickWrapper"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;
    .param p2, "token"    # Landroid/os/Parcelable;

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1038
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setOnClickListenerWrapper() is only compatible with BUTTON type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    :cond_0
    invoke-virtual {p1, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->setToken(Landroid/os/Parcelable;)V

    .line 1044
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToken:Landroid/os/Parcelable;

    .line 1045
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnClickWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    .line 1046
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnClickWrapperTag:Ljava/lang/String;

    .line 1048
    return-void
.end method

.method public setOnDismissWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;)V
    .locals 1
    .param p1, "onDismissWrapper"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnDismissWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    .line 825
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mOnDismissWrapperTag:Ljava/lang/String;

    .line 827
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1356
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setProgress() is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1362
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1366
    :cond_1
    return-void
.end method

.method public setProgressIndeterminate(Z)V
    .locals 2
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 1442
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1444
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperCardToast"

    const-string/jumbo v1, "setProgressIndeterminate() is only compatible with PROGRESS_HORIZONTAL type SuperCardToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_0
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->isProgressIndeterminate:Z

    .line 1450
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1452
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1456
    :cond_1
    return-void
.end method

.method public setShowImmediate(Z)V
    .locals 0
    .param p1, "showImmediate"    # Z

    .prologue
    .line 718
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->showImmediate:Z

    .line 719
    return-void
.end method

.method public setSwipeToDismiss(Z)V
    .locals 3
    .param p1, "swipeDismiss"    # Z

    .prologue
    .line 771
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIsSwipeDismissible:Z

    .line 773
    if-eqz p1, :cond_2

    .line 775
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-le v1, v2, :cond_1

    .line 777
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    new-instance v2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$2;

    invoke-direct {v2, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$2;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    invoke-direct {v0, v1, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;-><init>(Landroid/view/View;Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener$OnDismissCallback;)V

    .line 789
    .local v0, "swipeDismissListener":Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 803
    .end local v0    # "swipeDismissListener":Lcom/youku/laifeng/sdk/widget/supertoasts/util/SwipeDismissListener;
    :cond_0
    :goto_0
    return-void

    .line 793
    :cond_1
    sget-boolean v1, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SuperCardToast"

    const-string v2, "Swipe to dismiss was enabled but the SDK version is pre-Honeycomb"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 799
    :cond_2
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 424
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 470
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 472
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 492
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 494
    return-void
.end method

.method public setTouchToDismiss(Z)V
    .locals 2
    .param p1, "touchDismiss"    # Z

    .prologue
    .line 739
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIsTouchDismissible:Z

    .line 741
    if-eqz p1, :cond_0

    .line 743
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 751
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setTypefaceStyle(I)V
    .locals 2
    .param p1, "typeface"    # I

    .prologue
    .line 446
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mTypeface:I

    .line 448
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 450
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    .line 357
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperCardToast;->add(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    .line 359
    iget-boolean v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mIsIndeterminate:Z

    if-nez v1, :cond_0

    .line 361
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    .line 362
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mHideRunnable:Ljava/lang/Runnable;

    iget v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mDuration:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 368
    iget-boolean v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->showImmediate:Z

    if-nez v1, :cond_1

    .line 370
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->getShowAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 373
    .local v0, "animation":Landroid/view/animation/Animation;
    new-instance v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$1;

    invoke-direct {v1, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast$1;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 400
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperCardToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 404
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_1
    return-void
.end method
