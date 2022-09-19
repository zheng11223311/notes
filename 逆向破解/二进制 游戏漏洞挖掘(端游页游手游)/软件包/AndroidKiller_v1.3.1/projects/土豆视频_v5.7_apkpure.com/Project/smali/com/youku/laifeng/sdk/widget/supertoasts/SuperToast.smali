.class public Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
.super Ljava/lang/Object;
.source "SuperToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;,
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Type;,
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$TextSize;,
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Duration;,
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Icon;,
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;,
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Background;,
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$OnDismissListener;,
        Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$OnClickListener;
    }
.end annotation


# static fields
.field private static final ERROR_CONTEXTNULL:Ljava/lang/String; = " - You cannot use a null context."

.field private static final ERROR_DURATIONTOOLONG:Ljava/lang/String; = " - You should NEVER specify a duration greater than four and a half seconds for a SuperToast."

.field private static final TAG:Ljava/lang/String; = "SuperToast"


# instance fields
.field private mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

.field private mBackground:I

.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mGravity:I

.field private mMessageTextView:Landroid/widget/TextView;

.field private mOnDismissListener:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$OnDismissListener;

.field private mRootLayout:Landroid/widget/LinearLayout;

.field private mToastView:Landroid/view/View;

.field private mTypefaceStyle:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 220
    const/16 v1, 0x51

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mGravity:I

    .line 221
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mDuration:I

    .line 224
    iput v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mXOffset:I

    .line 225
    iput v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mYOffset:I

    .line 240
    if-nez p1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SuperToast - You cannot use a null context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 246
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 249
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "dimen"

    const-string/jumbo v4, "toast_hover"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 248
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mYOffset:I

    .line 251
    const-string v1, "layout_inflater"

    .line 252
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 254
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supertoast"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    .line 256
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 257
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManager:Landroid/view/WindowManager;

    .line 259
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    .line 260
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "id"

    const-string/jumbo v4, "root_layout"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 262
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    .line 263
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "message_textview"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FADE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 220
    const/16 v1, 0x51

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mGravity:I

    .line 221
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mDuration:I

    .line 224
    iput v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mXOffset:I

    .line 225
    iput v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mYOffset:I

    .line 275
    if-nez p1, :cond_0

    .line 277
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "SuperToast - You cannot use a null context."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 284
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "dimen"

    const-string/jumbo v4, "toast_hover"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 283
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mYOffset:I

    .line 286
    const-string v1, "layout_inflater"

    .line 287
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 289
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v1

    const-string v2, "layout"

    const-string/jumbo v3, "supertoast"

    invoke-static {v1, v2, v3}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    .line 291
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManager:Landroid/view/WindowManager;

    .line 294
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    .line 295
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "id"

    const-string/jumbo v4, "root_layout"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mRootLayout:Landroid/widget/LinearLayout;

    .line 297
    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    .line 298
    invoke-static {}, Lcom/youku/laifeng/libcuteroom/LibAppApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "message_textview"

    invoke-static {v2, v3, v4}, Lcom/corncop/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    .line 300
    invoke-direct {p0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V

    .line 302
    return-void
.end method

.method public static cancelAllSuperToasts()V
    .locals 1

    .prologue
    .line 736
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;->cancelAllSuperToasts()V

    .line 738
    return-void
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I

    .prologue
    .line 680
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;-><init>(Landroid/content/Context;)V

    .line 681
    .local v0, "superToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setText(Ljava/lang/CharSequence;)V

    .line 682
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setDuration(I)V

    .line 684
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "animations"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .prologue
    .line 701
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;-><init>(Landroid/content/Context;)V

    .line 702
    .local v0, "superToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setText(Ljava/lang/CharSequence;)V

    .line 703
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setDuration(I)V

    .line 704
    invoke-virtual {v0, p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V

    .line 706
    return-object v0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/CharSequence;ILcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "textCharSequence"    # Ljava/lang/CharSequence;
    .param p2, "durationInteger"    # I
    .param p3, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    .line 722
    new-instance v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;

    invoke-direct {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;-><init>(Landroid/content/Context;)V

    .line 723
    .local v0, "superToast":Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;
    invoke-virtual {v0, p1}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setText(Ljava/lang/CharSequence;)V

    .line 724
    invoke-virtual {v0, p2}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setDuration(I)V

    .line 725
    invoke-direct {v0, p3}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V

    .line 727
    return-object v0
.end method

.method private getAnimation()I
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->FLYIN:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v0, v1, :cond_0

    .line 638
    const v0, 0x1030003

    .line 650
    :goto_0
    return v0

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->SCALE:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v0, v1, :cond_1

    .line 642
    const v0, 0x1030002

    goto :goto_0

    .line 644
    :cond_1
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    sget-object v1, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;->POPUP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    if-ne v0, v1, :cond_2

    .line 646
    const v0, 0x1030056

    goto :goto_0

    .line 650
    :cond_2
    const v0, 0x1030004

    goto :goto_0
.end method

.method private setStyle(Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;)V
    .locals 1
    .param p1, "style"    # Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;

    .prologue
    .line 661
    iget-object v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->animations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V

    .line 662
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->typefaceStyle:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setTypefaceStyle(I)V

    .line 663
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->textColor:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setTextColor(I)V

    .line 664
    iget v0, p1, Lcom/youku/laifeng/sdk/widget/supertoasts/util/Style;->background:I

    invoke-virtual {p0, v0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->setBackground(I)V

    .line 666
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 572
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;->removeSuperToast(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;)V

    .line 574
    return-void
.end method

.method public getAnimations()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    return-object v0
.end method

.method public getBackground()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mBackground:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mDuration:I

    return v0
.end method

.method public getOnDismissListener()Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$OnDismissListener;
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mOnDismissListener:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$OnDismissListener;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method public getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTypefaceStyle()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mTypefaceStyle:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 616
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public getWindowManagerParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mToastView:Landroid/view/View;

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

.method public setAnimations(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;)V
    .locals 0
    .param p1, "animations"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mAnimations:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$Animations;

    .line 531
    return-void
.end method

.method public setBackground(I)V
    .locals 1
    .param p1, "background"    # I

    .prologue
    .line 490
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mBackground:I

    .line 492
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mRootLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 494
    return-void
.end method

.method public setDuration(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    const/16 v2, 0x1194

    .line 426
    if-le p1, v2, :cond_1

    .line 428
    sget-boolean v0, Lcom/corncop/LaiFengContant;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "SuperToast"

    const-string v1, "SuperToast - You should NEVER specify a duration greater than four and a half seconds for a SuperToast."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    iput v2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mDuration:I

    .line 438
    :goto_0
    return-void

    .line 434
    :cond_1
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mDuration:I

    goto :goto_0
.end method

.method public setGravity(III)V
    .locals 0
    .param p1, "gravity"    # I
    .param p2, "xOffset"    # I
    .param p3, "yOffset"    # I

    .prologue
    .line 516
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mGravity:I

    .line 517
    iput p2, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mXOffset:I

    .line 518
    iput p3, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mYOffset:I

    .line 520
    return-void
.end method

.method public setIcon(ILcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;)V
    .locals 3
    .param p1, "iconResource"    # I
    .param p2, "iconPosition"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    .prologue
    const/4 v2, 0x0

    .line 459
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->BOTTOM:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_1

    .line 461
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    .line 462
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 464
    :cond_1
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->LEFT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_2

    .line 466
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 467
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 466
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 469
    :cond_2
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->RIGHT:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_3

    .line 471
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    .line 472
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 471
    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 474
    :cond_3
    sget-object v0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;->TOP:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$IconPosition;

    if-ne p2, v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mContext:Landroid/content/Context;

    .line 477
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 476
    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setOnDismissListener(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$OnDismissListener;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mOnDismissListener:Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast$OnDismissListener;

    .line 554
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 384
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "textSize"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 406
    return-void
.end method

.method public setTypefaceStyle(I)V
    .locals 2
    .param p1, "typeface"    # I

    .prologue
    .line 358
    iput p1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mTypefaceStyle:I

    .line 360
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mMessageTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 362
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 311
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    .line 313
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 314
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 315
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 318
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 319
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->getAnimation()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 320
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 321
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mGravity:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 322
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mXOffset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 323
    iget-object v0, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mWindowManagerParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;->mYOffset:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 325
    invoke-static {}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;->getInstance()Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/youku/laifeng/sdk/widget/supertoasts/ManagerSuperToast;->add(Lcom/youku/laifeng/sdk/widget/supertoasts/SuperToast;)V

    .line 327
    return-void
.end method
