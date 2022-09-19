.class public Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
.super Ljava/lang/Object;
.source "SuperActivityToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;
    }
.end annotation


# static fields
.field private static final BUNDLE_TAG:Ljava/lang/String; = "0x532e412e542e"

.field private static final ERROR_ACTIVITYNULL:Ljava/lang/String; = " - You cannot pass a null Activity as a parameter."

.field private static final ERROR_NOTBUTTONTYPE:Ljava/lang/String; = " - is only compatible with BUTTON type SuperActivityToasts."

.field private static final ERROR_NOTEITHERPROGRESSTYPE:Ljava/lang/String; = " - is only compatible with PROGRESS_HORIZONTAL or PROGRESS type SuperActivityToasts."

.field private static final ERROR_NOTPROGRESSHORIZONTALTYPE:Ljava/lang/String; = " - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

.field private static final MANAGER_TAG:Ljava/lang/String; = "SuperActivityToast Manager"

.field private static final TAG:Ljava/lang/String; = "SuperActivityToast"


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

.field private mIcon:I

.field private mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

.field private mIsIndeterminate:Z

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

.field private mTypefaceStyle:I

.field private mViewGroup:Landroid/view/ViewGroup;

.field private showImmediate:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 81
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDuration:I

    .line 82
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mBackground:I

    .line 83
    sget v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 84
    const v0, -0x333334

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 86
    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 97
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1488
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1515
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 109
    if-nez p1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperActivityToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 117
    const-string v0, "layout_inflater"

    .line 118
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 120
    const v0, 0x1020002

    .line 121
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 123
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "supertoast"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "message_textview"

    .line 127
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string/jumbo v2, "root_layout"

    .line 130
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 132
    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;I)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "referenceHolder"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;
    .param p3, "wrappers"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;
    .param p4, "position"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v8, 0x1

    .line 1387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 81
    const/16 v5, 0x7d0

    iput v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDuration:I

    .line 82
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v5

    iput v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mBackground:I

    .line 83
    sget v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 84
    const v5, -0x333334

    iput v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 86
    const/4 v5, 0x0

    iput v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 87
    iput v8, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 97
    sget-object v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1488
    new-instance v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;

    invoke-direct {v5, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1515
    new-instance v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;

    invoke-direct {v5, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v5, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 1391
    iget-object v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v6, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v5, v6, :cond_2

    .line 1393
    new-instance v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    sget-object v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    invoke-direct {v4, p1, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;)V

    .line 1394
    .local v4, "superActivityToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    iget-object v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setButtonText(Ljava/lang/CharSequence;)V

    .line 1395
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextSize:F

    invoke-direct {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setButtonTextSizeFloat(F)V

    .line 1396
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTextColor:I

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setButtonTextColor(I)V

    .line 1397
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonIcon:I

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setButtonIcon(I)V

    .line 1398
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDivider:I

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setDividerColor(I)V

    .line 1399
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mButtonTypefaceStyle:I

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setButtonTypefaceStyle(I)V

    .line 1401
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v5, 0xf

    .line 1405
    .local v3, "screenSize":I
    const/4 v5, 0x3

    if-lt v3, v5, :cond_0

    .line 1407
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1410
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x55

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1411
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dimen"

    const-string v7, "buttontoast_hover"

    invoke-static {p1, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1412
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dimen"

    const-string v7, "buttontoast_x_padding"

    invoke-static {p1, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1413
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "dimen"

    const-string v7, "buttontoast_x_padding"

    invoke-static {p1, v6, v7}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1415
    invoke-direct {v4}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1420
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    if-eqz p3, :cond_5

    .line 1422
    invoke-virtual {p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;->getOnClickWrappers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    .line 1424
    .local v1, "onClickWrapper":Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;
    invoke-virtual {v1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mClickListenerTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1426
    iget-object v6, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mToken:Landroid/os/Parcelable;

    invoke-virtual {v4, v1, v6}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setOnClickWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 1433
    .end local v1    # "onClickWrapper":Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;
    .end local v3    # "screenSize":I
    .end local v4    # "superActivityToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    :cond_2
    iget-object v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v6, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v5, v6, :cond_4

    .line 1485
    :cond_3
    :goto_1
    return-void

    .line 1439
    :cond_4
    iget-object v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v6, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v5, v6, :cond_3

    .line 1447
    new-instance v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-direct {v4, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;)V

    .line 1452
    .restart local v4    # "superActivityToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    :cond_5
    if-eqz p3, :cond_7

    .line 1454
    invoke-virtual {p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;->getOnDismissWrappers()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    .line 1456
    .local v2, "onDismissWrapper":Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;
    invoke-virtual {v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;->getTag()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDismissListenerTag:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1458
    invoke-virtual {v4, v2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setOnDismissWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;)V

    goto :goto_2

    .line 1465
    .end local v2    # "onDismissWrapper":Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;
    :cond_7
    iget-object v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V

    .line 1466
    iget-object v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mText:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setText(Ljava/lang/CharSequence;)V

    .line 1467
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTypefaceStyle:I

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setTypefaceStyle(I)V

    .line 1468
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mDuration:I

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setDuration(I)V

    .line 1469
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTextColor:I

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setTextColor(I)V

    .line 1470
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mTextSize:F

    invoke-direct {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setTextSizeFloat(F)V

    .line 1471
    iget-boolean v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIsIndeterminate:Z

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setIndeterminate(Z)V

    .line 1472
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIcon:I

    iget-object v6, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    invoke-virtual {v4, v5, v6}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setIcon(ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;)V

    .line 1473
    iget v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mBackground:I

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setBackground(I)V

    .line 1474
    iget-boolean v5, p2, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;->mIsTouchDismissible:Z

    invoke-virtual {v4, v5}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setTouchToDismiss(Z)V

    .line 1477
    if-ne p4, v8, :cond_8

    .line 1479
    invoke-virtual {v4, v8}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setShowImmediate(Z)V

    .line 1483
    :cond_8
    invoke-virtual {v4}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->show()V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .prologue
    const/4 v3, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 81
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDuration:I

    .line 82
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mBackground:I

    .line 83
    sget v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 84
    const v0, -0x333334

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 86
    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 97
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1488
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1515
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 177
    if-nez p1, :cond_0

    .line 179
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperActivityToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 184
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 186
    const-string v0, "layout_inflater"

    .line 187
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 189
    const v0, 0x1020002

    .line 190
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 192
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "supertoast"

    .line 195
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "message_textview"

    .line 229
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    .line 231
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string/jumbo v2, "root_layout"

    .line 232
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 234
    return-void

    .line 197
    :cond_2
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "superactivitytoast_button"

    .line 200
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 199
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "button"

    .line 203
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    .line 205
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "divider"

    .line 206
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerView:Landroid/view/View;

    .line 208
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 210
    :cond_3
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_4

    .line 212
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "superactivitytoast_progresscircle"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 215
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "progress_bar"

    .line 216
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    .line 218
    :cond_4
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "superactivitytoast_progresshorizontal"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 223
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "progress_bar"

    .line 224
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;
    .param p3, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    const/4 v3, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 81
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDuration:I

    .line 82
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mBackground:I

    .line 83
    sget v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 84
    const v0, -0x333334

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 86
    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 97
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1488
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1515
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 245
    if-nez p1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperActivityToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 252
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 254
    const-string v0, "layout_inflater"

    .line 255
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 257
    const v0, 0x1020002

    .line 258
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 260
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "supertoast"

    .line 263
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 262
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 296
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "message_textview"

    .line 297
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    .line 299
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string/jumbo v2, "root_layout"

    .line 300
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 302
    invoke-direct {p0, p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V

    .line 304
    return-void

    .line 265
    :cond_2
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "superactivitytoast_button"

    .line 268
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 270
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "button"

    .line 271
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    .line 273
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "divider"

    .line 274
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerView:Landroid/view/View;

    .line 276
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 278
    :cond_3
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_4

    .line 280
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "superactivitytoast_progresscircle"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 283
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "progress_bar"

    .line 284
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0

    .line 286
    :cond_4
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne p2, v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "superactivitytoast_progresshorizontal"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 291
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "progress_bar"

    .line 292
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    goto/16 :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 81
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDuration:I

    .line 82
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->getBackground(I)I

    move-result v0

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mBackground:I

    .line 83
    sget v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon$Dark;->UNDO:I

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 84
    const v0, -0x333334

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 86
    iput v3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 97
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->STANDARD:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    .line 1488
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$1;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    .line 1515
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$2;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 142
    if-nez p1, :cond_0

    .line 144
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SuperActivityToast - You cannot pass a null Activity as a parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 150
    const-string v0, "layout_inflater"

    .line 151
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 153
    const v0, 0x1020002

    .line 154
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    .line 156
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mLayoutInflater:Landroid/view/LayoutInflater;

    const-string v1, "layout"

    const-string/jumbo v2, "supertoast"

    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    .line 159
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string v2, "message_textview"

    .line 160
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const-string v1, "id"

    const-string/jumbo v2, "root_layout"

    .line 163
    invoke-static {p1, v1, v2}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 165
    invoke-direct {p0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V

    .line 167
    return-void
.end method

.method static synthetic access$000(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnClickWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToken:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getOnClickWrapperTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Landroid/os/Parcelable;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getToken()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->getOnDismissWrapperTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cancelAllSuperActivityToasts()V
    .locals 1

    .prologue
    .line 1278
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->cancelAllSuperActivityToasts()V

    .line 1280
    return-void
.end method

.method public static clearSuperActivityToastsForActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1290
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    move-result-object v0

    .line 1291
    invoke-virtual {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->cancelAllSuperActivityToastsForActivity(Landroid/app/Activity;)V

    .line 1293
    return-void
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I

    .prologue
    .line 1223
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;)V

    .line 1224
    .local v0, "superActivityToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setDuration(I)V

    .line 1227
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "animations"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .prologue
    .line 1243
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;)V

    .line 1244
    .local v0, "superActivityToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setDuration(I)V

    .line 1246
    invoke-virtual {v0, p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V

    .line 1248
    return-object v0
.end method

.method public static create(Landroid/app/Activity;Ljava/lang/CharSequence;ILcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    .line 1264
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;)V

    .line 1265
    .local v0, "superActivityToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setDuration(I)V

    .line 1267
    invoke-direct {v0, p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V

    .line 1269
    return-object v0
.end method

.method private getOnClickWrapperTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnClickWrapperTag:Ljava/lang/String;

    return-object v0
.end method

.method private getOnDismissWrapperTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnDismissWrapperTag:Ljava/lang/String;

    return-object v0
.end method

.method private getRootLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private getToken()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToken:Landroid/os/Parcelable;

    return-object v0
.end method

.method public static onRestoreState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 7
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1328
    if-nez p0, :cond_1

    .line 1349
    :cond_0
    return-void

    .line 1333
    :cond_1
    const-string v3, "0x532e412e542e"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1335
    .local v2, "savedArray":[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 1337
    .local v0, "i":I
    if-eqz v2, :cond_0

    .line 1339
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 1341
    .local v1, "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v0, v0, 0x1

    .line 1343
    new-instance v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    check-cast v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;

    .end local v1    # "parcelable":Landroid/os/Parcelable;
    const/4 v6, 0x0

    invoke-direct {v5, p1, v1, v6, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;I)V

    .line 1339
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static onRestoreState(Landroid/os/Bundle;Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;)V
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "wrappers"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;

    .prologue
    .line 1361
    if-nez p0, :cond_1

    .line 1382
    :cond_0
    return-void

    .line 1366
    :cond_1
    const-string v3, "0x532e412e542e"

    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1368
    .local v2, "savedArray":[Landroid/os/Parcelable;
    const/4 v0, 0x0

    .line 1370
    .local v0, "i":I
    if-eqz v2, :cond_0

    .line 1372
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 1374
    .local v1, "parcelable":Landroid/os/Parcelable;
    add-int/lit8 v0, v0, 0x1

    .line 1376
    new-instance v5, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    check-cast v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;

    .end local v1    # "parcelable":Landroid/os/Parcelable;
    invoke-direct {v5, p1, v1, p2, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;-><init>(Landroid/app/Activity;Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Wrappers;I)V

    .line 1372
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static onSaveState(Landroid/os/Bundle;)V
    .locals 5
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1303
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->getList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v1, v3, [Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;

    .line 1306
    .local v1, "list":[Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    move-result-object v3

    invoke-virtual {v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->getList()Ljava/util/LinkedList;

    move-result-object v2

    .line 1308
    .local v2, "lister":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 1310
    new-instance v4, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;

    invoke-direct {v4, v3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast$ReferenceHolder;-><init>(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    aput-object v4, v1, v0

    .line 1308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1314
    :cond_0
    const-string v3, "0x532e412e542e"

    invoke-virtual {p0, v3, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1316
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->cancelAllSuperActivityToasts()V

    .line 1318
    return-void
.end method

.method private setButtonTextSizeFloat(F)V
    .locals 2
    .param p1, "buttonTextSize"    # F

    .prologue
    .line 977
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 979
    return-void
.end method

.method private setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V
    .locals 2
    .param p1, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    .line 1198
    iget-object v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->animations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V

    .line 1199
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->typefaceStyle:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setTypefaceStyle(I)V

    .line 1200
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setTextColor(I)V

    .line 1201
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setBackground(I)V

    .line 1203
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-ne v0, v1, :cond_0

    .line 1205
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->dividerColor:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setDividerColor(I)V

    .line 1206
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->buttonTextColor:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->setButtonTextColor(I)V

    .line 1210
    :cond_0
    return-void
.end method

.method private setTextSizeFloat(F)V
    .locals 2
    .param p1, "textSize"    # F

    .prologue
    .line 412
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 414
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 661
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->removeSuperToast(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    .line 663
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    return-object v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 548
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mBackground:I

    return v0
.end method

.method public getButtonIcon()I
    .locals 1

    .prologue
    .line 786
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonIcon:I

    return v0
.end method

.method public getButtonText()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 864
    :goto_0
    return-object v0

    .line 862
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperActivityToast"

    const-string v1, "getButtonText() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getButtonTextColor()I
    .locals 2

    .prologue
    .line 936
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v0

    .line 944
    :goto_0
    return v0

    .line 942
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperActivityToast"

    const-string v1, "getButtonTextColor() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTextSize()F
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    .line 997
    :goto_0
    return v0

    .line 995
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperActivityToast"

    const-string v1, "getButtonTextSize() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonTypefaceStyle()I
    .locals 1

    .prologue
    .line 902
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    return v0
.end method

.method public getDividerColor()I
    .locals 1

    .prologue
    .line 822
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerColor:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDuration:I

    return v0
.end method

.method public getIconPosition()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    return-object v0
.end method

.method public getIconResource()I
    .locals 1

    .prologue
    .line 524
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mIcon:I

    return v0
.end method

.method public getMaxProgress()I
    .locals 2

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 1085
    :goto_0
    return v0

    .line 1083
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperActivityToast"

    const-string v1, "getMaxProgress() - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getOnDismissWrapper()Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;
    .locals 1

    .prologue
    .line 643
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnDismissWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 1041
    :goto_0
    return v0

    .line 1039
    :cond_0
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "SuperActivityToast"

    const-string v1, "getProgress() - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProgressIndeterminate()Z
    .locals 1

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->isProgressIndeterminate:Z

    return v0
.end method

.method public getShowImmediate()Z
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->showImmediate:Z

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getType()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method public getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mIsIndeterminate:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

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

.method public isTouchDismissible()Z
    .locals 1

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mIsTouchDismissible:Z

    return v0
.end method

.method public setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V
    .locals 0
    .param p1, "animations"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .prologue
    .line 559
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 561
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 535
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mBackground:I

    .line 537
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 539
    return-void
.end method

.method public setButtonIcon(I)V
    .locals 3
    .param p1, "buttonIcon"    # I

    .prologue
    const/4 v2, 0x0

    .line 733
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 735
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setButtonIcon() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_0
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 741
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 743
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 744
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 743
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 748
    :cond_1
    return-void
.end method

.method public setButtonIcon(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "buttonIcon"    # I
    .param p2, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 759
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 761
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setButtonIcon() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_0
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonIcon:I

    .line 767
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 770
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 769
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 772
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 776
    :cond_1
    return-void
.end method

.method public setButtonText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "buttonText"    # Ljava/lang/CharSequence;

    .prologue
    .line 834
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 836
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setButtonText() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 846
    :cond_1
    return-void
.end method

.method public setButtonTextColor(I)V
    .locals 2
    .param p1, "buttonTextColor"    # I

    .prologue
    .line 914
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 916
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setButtonTextColor() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 926
    :cond_1
    return-void
.end method

.method public setButtonTextSize(I)V
    .locals 2
    .param p1, "buttonTextSize"    # I

    .prologue
    .line 958
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 960
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setButtonTextSize() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 966
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 970
    :cond_1
    return-void
.end method

.method public setButtonTypefaceStyle(I)V
    .locals 2
    .param p1, "typefaceStyle"    # I

    .prologue
    .line 878
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 880
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setButtonTypefaceStyle() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 886
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButtonTypefaceStyle:I

    .line 888
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 892
    :cond_1
    return-void
.end method

.method public setDividerColor(I)V
    .locals 2
    .param p1, "dividerColor"    # I

    .prologue
    .line 798
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 800
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setDivider() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_0
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerColor:I

    .line 806
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 812
    :cond_1
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mDuration:I

    .line 436
    return-void
.end method

.method public setIcon(ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;)V
    .locals 3
    .param p1, "iconResource"    # I
    .param p2, "iconPosition"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .prologue
    const/4 v2, 0x0

    .line 479
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mIcon:I

    .line 480
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mIconPosition:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .line 482
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 485
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 484
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_2

    .line 489
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 490
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 489
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 492
    :cond_2
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_3

    .line 494
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 495
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 494
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 497
    :cond_3
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->TOP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mActivity:Landroid/app/Activity;

    .line 500
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 499
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIndeterminate(Z)V
    .locals 0
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mIsIndeterminate:Z

    .line 458
    return-void
.end method

.method public setMaxProgress(I)V
    .locals 2
    .param p1, "maxProgress"    # I

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1057
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setMaxProgress() - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1063
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1067
    :cond_1
    return-void
.end method

.method public setOnClickWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;)V
    .locals 2
    .param p1, "onClickWrapper"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 675
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setOnClickListenerWrapper() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnClickWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    .line 680
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnClickWrapperTag:Ljava/lang/String;

    .line 682
    return-void
.end method

.method public setOnClickWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "onClickWrapper"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;
    .param p2, "token"    # Landroid/os/Parcelable;

    .prologue
    .line 693
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->BUTTON:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 695
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setOnClickListenerWrapper() - is only compatible with BUTTON type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    invoke-virtual {p1, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->setToken(Landroid/os/Parcelable;)V

    .line 701
    iput-object p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToken:Landroid/os/Parcelable;

    .line 702
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnClickWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;

    .line 703
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnClickWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnClickWrapperTag:Ljava/lang/String;

    .line 705
    return-void
.end method

.method public setOnDismissWrapper(Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;)V
    .locals 1
    .param p1, "onDismissWrapper"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    .prologue
    .line 633
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnDismissWrapper:Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;

    .line 634
    invoke-virtual {p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/util/OnDismissWrapper;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mOnDismissWrapperTag:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 1011
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1013
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setProgress() - is only compatible with PROGRESS_HORIZONTAL type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1023
    :cond_1
    return-void
.end method

.method public setProgressIndeterminate(Z)V
    .locals 2
    .param p1, "isIndeterminate"    # Z

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS_HORIZONTAL:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mType:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;->PROGRESS:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;

    if-eq v0, v1, :cond_0

    .line 1101
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperActivityToast"

    const-string/jumbo v1, "setProgressIndeterminate() - is only compatible with PROGRESS_HORIZONTAL or PROGRESS type SuperActivityToasts."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_0
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->isProgressIndeterminate:Z

    .line 1107
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 1109
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 1113
    :cond_1
    return-void
.end method

.method public setShowImmediate(Z)V
    .locals 0
    .param p1, "showImmediate"    # Z

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->showImmediate:Z

    .line 582
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 335
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 383
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 403
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 405
    return-void
.end method

.method public setTouchToDismiss(Z)V
    .locals 2
    .param p1, "touchDismiss"    # Z

    .prologue
    .line 602
    iput-boolean p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mIsTouchDismissible:Z

    .line 604
    if-eqz p1, :cond_0

    .line 606
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTouchDismissListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 614
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mToastView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setTypefaceStyle(I)V
    .locals 2
    .param p1, "typeface"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mTypefaceStyle:I

    .line 359
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 361
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 313
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperActivityToast;->add(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperActivityToast;)V

    .line 315
    return-void
.end method
