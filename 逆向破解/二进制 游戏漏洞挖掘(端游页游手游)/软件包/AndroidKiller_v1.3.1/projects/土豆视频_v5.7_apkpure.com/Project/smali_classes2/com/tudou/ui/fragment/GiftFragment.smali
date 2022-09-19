.class public Lcom/tudou/ui/fragment/GiftFragment;
.super Landroid/app/Fragment;
.source "GiftFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/GiftFragment$LoginListener;,
        Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;,
        Lcom/tudou/ui/fragment/GiftFragment$MyHandler;
    }
.end annotation


# static fields
.field public static final ANIMATION_NO:I = 0x0

.field public static final ANIMATION_SLIDE:I = 0x1

.field private static final GET_GIFT_FAILED:I = 0x2

.field private static final GET_GIFT_SUCCESS:I = 0x1

.field public static isNeedRefresh:Z


# instance fields
.field private isOut:Z

.field private mCallBack:Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;

.field private mErrorLayout:Lcom/youku/widget/ErrorLayout;

.field private mFragmentRootView:Landroid/view/View;

.field private mGiftIconsId:[I

.field private mGiftLayout:Landroid/widget/LinearLayout;

.field private mHandler:Lcom/tudou/ui/fragment/GiftFragment$MyHandler;

.field private mItemCode:Ljava/lang/String;

.field private mLoading:Landroid/view/View;

.field private mLoginListener:Lcom/tudou/ui/fragment/GiftFragment$LoginListener;

.field private mOnCloseListener:Ljava/lang/Runnable;

.field private mRankingLayout:Landroid/widget/LinearLayout;

.field private mTipsLayout:Landroid/view/View;

.field private rankingNumImgs:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 50
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 52
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->rankingNumImgs:[I

    .line 54
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftIconsId:[I

    .line 63
    new-instance v0, Lcom/tudou/ui/fragment/GiftFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/GiftFragment$MyHandler;-><init>(Lcom/tudou/ui/fragment/GiftFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mHandler:Lcom/tudou/ui/fragment/GiftFragment$MyHandler;

    .line 410
    return-void

    .line 52
    :array_0
    .array-data 4
        0x7f020330
        0x7f020331
        0x7f020332
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x7f020a7b
        0x7f020a74
        0x7f020022
    .end array-data
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/GiftFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mLoading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/youku/widget/ErrorLayout;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/GiftFragment;Lcom/youku/vo/GiftBean$Data;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftFragment;
    .param p1, "x1"    # Lcom/youku/vo/GiftBean$Data;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/GiftFragment;->refreshGiftLayout(Lcom/youku/vo/GiftBean$Data;)V

    return-void
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/GiftFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/GiftFragment;->refreshRankingLayout(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/GiftFragment;)Lcom/tudou/ui/fragment/GiftFragment$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mHandler:Lcom/tudou/ui/fragment/GiftFragment$MyHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/GiftFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mItemCode:Ljava/lang/String;

    return-object v0
.end method

.method private initData()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 146
    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mLoading:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    invoke-virtual {v3}, Lcom/youku/widget/ErrorLayout;->showLoadingLayout()V

    .line 148
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "item_code"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mItemCode:Ljava/lang/String;

    .line 150
    const-string v3, "byron"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item_code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftFragment;->mItemCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mItemCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/youku/http/TudouURLContainer;->getGiftUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "giftUrl":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v6}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/youku/network/IHttpRequest;

    .line 153
    .local v2, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v1, Lcom/youku/network/HttpIntent;

    invoke-direct {v1, v0, v6}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 154
    .local v1, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/GiftFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/GiftFragment$1;-><init>(Lcom/tudou/ui/fragment/GiftFragment;)V

    invoke-interface {v2, v1, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 182
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 4
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 131
    const v3, 0x7f0c012e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mLoading:Landroid/view/View;

    .line 132
    const v3, 0x7f0c0093

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/youku/widget/ErrorLayout;

    iput-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    .line 133
    const v3, 0x7f0c00b1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mFragmentRootView:Landroid/view/View;

    .line 134
    const v3, 0x7f0c06b2

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftLayout:Landroid/widget/LinearLayout;

    .line 135
    const v3, 0x7f0c06b3

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mRankingLayout:Landroid/widget/LinearLayout;

    .line 136
    const v3, 0x7f0c06b4

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tudou/ui/fragment/GiftFragment;->mTipsLayout:Landroid/view/View;

    .line 137
    const v3, 0x7f0c06b0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 138
    .local v1, "titleLayout":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v3, 0x7f0c00a7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 140
    .local v0, "backImg":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v3, 0x7f0c06b1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 142
    .local v2, "titleTv":Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private refreshGiftLayout(Lcom/youku/vo/GiftBean$Data;)V
    .locals 19
    .param p1, "data"    # Lcom/youku/vo/GiftBean$Data;

    .prologue
    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 232
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/youku/vo/GiftBean$Data;->presentItems:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    .line 233
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/youku/widget/ErrorLayout;->showNoDataLayout()V

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mErrorLayout:Lcom/youku/widget/ErrorLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/youku/widget/ErrorLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    :cond_1
    return-void

    .line 237
    :cond_2
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/youku/vo/GiftBean$Data;->presentItems:Ljava/util/ArrayList;

    .line 238
    .local v8, "giftList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GiftBean$Data$PresentItem;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v10, v0, :cond_1

    .line 239
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youku/vo/GiftBean$Data$PresentItem;

    .line 240
    .local v14, "presentItem":Lcom/youku/vo/GiftBean$Data$PresentItem;
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 241
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v17, 0x7f03015b

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 242
    .local v7, "giftItem":Landroid/view/View;
    const v17, 0x7f0c06b5

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 243
    .local v6, "giftImg":Landroid/widget/ImageView;
    const v17, 0x7f0c06b6

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 244
    .local v9, "giftPriceTv":Landroid/widget/TextView;
    const v17, 0x7f0c06b7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 245
    .local v4, "giftBuyBtn":Landroid/widget/TextView;
    iget-object v13, v14, Lcom/youku/vo/GiftBean$Data$PresentItem;->index:Ljava/lang/String;

    .line 247
    .local v13, "presentId":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftIconsId:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftIconsId:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    rem-int v18, v10, v18

    aget v15, v17, v18

    .line 253
    .local v15, "resourceId":I
    :goto_1
    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 255
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v14, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v14, Lcom/youku/vo/GiftBean$Data$PresentItem;->price:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\u5143"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "+"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v14, Lcom/youku/vo/GiftBean$Data$PresentItem;->popularity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\u4eba\u6c14"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftLayout:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    move v3, v10

    .line 259
    .local v3, "finalI":I
    new-instance v17, Lcom/tudou/ui/fragment/GiftFragment$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/tudou/ui/fragment/GiftFragment$3;-><init>(Lcom/tudou/ui/fragment/GiftFragment;Lcom/youku/vo/GiftBean$Data;II)V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 288
    .local v12, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a0598

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 289
    .local v16, "width":I
    move/from16 v0, v16

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 290
    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 291
    invoke-virtual {v7, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 238
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 250
    .end local v3    # "finalI":I
    .end local v12    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "resourceId":I
    .end local v16    # "width":I
    :cond_3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 251
    .local v5, "giftId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftIconsId:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v5, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftIconsId:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftIconsId:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    rem-int v18, v10, v18

    aget v15, v17, v18

    .restart local v15    # "resourceId":I
    :goto_2
    goto/16 :goto_1

    .end local v15    # "resourceId":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tudou/ui/fragment/GiftFragment;->mGiftIconsId:[I

    move-object/from16 v17, v0

    add-int/lit8 v18, v5, -0x1

    aget v15, v17, v18

    goto :goto_2
.end method

.method private refreshRankingLayout(Ljava/util/ArrayList;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/vo/GiftBean$Data$RankingItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/youku/vo/GiftBean$Data$RankingItem;>;"
    const/16 v13, 0x8

    const/4 v12, 0x0

    .line 296
    iget-object v10, p0, Lcom/tudou/ui/fragment/GiftFragment;->mRankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 297
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_1

    .line 298
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_0

    .line 299
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/youku/vo/GiftBean$Data$RankingItem;

    .line 300
    .local v5, "item":Lcom/youku/vo/GiftBean$Data$RankingItem;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 301
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v10, 0x7f03015f

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 302
    .local v8, "rankingItem":Landroid/view/View;
    const v10, 0x7f0c06c7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 303
    .local v9, "rankingNumImg":Landroid/widget/ImageView;
    const v10, 0x7f0c0695

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 304
    .local v3, "iconImg":Landroid/widget/ImageView;
    const v10, 0x7f0c06c8

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 305
    .local v7, "nameTv":Landroid/widget/TextView;
    const v10, 0x7f0c06c9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 306
    .local v0, "contributionTv":Landroid/widget/TextView;
    iget-object v10, p0, Lcom/tudou/ui/fragment/GiftFragment;->rankingNumImgs:[I

    rem-int/lit8 v11, v2, 0x3

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 307
    iget-object v10, v5, Lcom/youku/vo/GiftBean$Data$RankingItem;->nikName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v5, Lcom/youku/vo/GiftBean$Data$RankingItem;->popularitys:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u8d21\u732e"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v10, v5, Lcom/youku/vo/GiftBean$Data$RankingItem;->picUrl:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-direct {p0, v3, v10, v11}, Lcom/tudou/ui/fragment/GiftFragment;->setImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 310
    iget-object v10, p0, Lcom/tudou/ui/fragment/GiftFragment;->mRankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 311
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 313
    .local v6, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v10, -0x1

    iput v10, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 314
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a05db

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v1, v10

    .line 315
    .local v1, "height":I
    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 316
    invoke-virtual {v8, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 318
    .end local v0    # "contributionTv":Landroid/widget/TextView;
    .end local v1    # "height":I
    .end local v3    # "iconImg":Landroid/widget/ImageView;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "item":Lcom/youku/vo/GiftBean$Data$RankingItem;
    .end local v6    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "nameTv":Landroid/widget/TextView;
    .end local v8    # "rankingItem":Landroid/view/View;
    .end local v9    # "rankingNumImg":Landroid/widget/ImageView;
    :cond_0
    iget-object v10, p0, Lcom/tudou/ui/fragment/GiftFragment;->mTipsLayout:Landroid/view/View;

    invoke-virtual {v10, v13}, Landroid/view/View;->setVisibility(I)V

    .line 319
    iget-object v10, p0, Lcom/tudou/ui/fragment/GiftFragment;->mRankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 324
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 321
    :cond_1
    iget-object v10, p0, Lcom/tudou/ui/fragment/GiftFragment;->mRankingLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 322
    iget-object v10, p0, Lcom/tudou/ui/fragment/GiftFragment;->mTipsLayout:Landroid/view/View;

    invoke-virtual {v10, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setImage(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "img"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "isRound"    # Z

    .prologue
    .line 185
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    .line 208
    .local v0, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {}, Lcom/baseproject/image/ImageLoaderManager;->getRoundPicOpt()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    new-instance v2, Lcom/tudou/ui/fragment/GiftFragment$2;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/fragment/GiftFragment$2;-><init>(Lcom/tudou/ui/fragment/GiftFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, p2, p1, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 228
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 397
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 398
    const/16 v0, 0x12

    if-ne p2, v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mLoginListener:Lcom/tudou/ui/fragment/GiftFragment$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mLoginListener:Lcom/tudou/ui/fragment/GiftFragment$LoginListener;

    invoke-interface {v0}, Lcom/tudou/ui/fragment/GiftFragment$LoginListener;->onLoginSuccess()V

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/tudou/ui/activity/GiftPayActivity;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 401
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 402
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/youku/widget/YoukuAnimation;->activityOpen(Landroid/content/Context;)V

    .line 404
    :cond_1
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 378
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 373
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 383
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 365
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mCallBack:Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftFragment;->mCallBack:Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;

    iget-boolean v1, p0, Lcom/tudou/ui/fragment/GiftFragment;->isOut:Z

    invoke-interface {v0, v1}, Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;->onAnimationEnd(Z)V

    .line 368
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 332
    :sswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 333
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, v2, v2}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 334
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 335
    iget-object v1, p0, Lcom/tudou/ui/fragment/GiftFragment;->mOnCloseListener:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/GiftFragment;->mOnCloseListener:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 338
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :sswitch_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/GiftFragment;->initData()V

    goto :goto_0

    .line 328
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0093 -> :sswitch_1
        0x7f0c00a7 -> :sswitch_0
        0x7f0c06b0 -> :sswitch_0
        0x7f0c06b1 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .locals 6
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "nextAnim"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "o":Landroid/animation/ObjectAnimator;
    if-nez p3, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-object v0

    .line 350
    :cond_1
    if-ne p3, v3, :cond_0

    .line 351
    if-nez p2, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/GiftFragment;->isOut:Z

    .line 352
    const/4 v2, 0x2

    new-array v1, v2, [F

    .line 353
    .local v1, "values":[F
    if-eqz p2, :cond_3

    sget v2, Lcom/tudou/detail/widget/DetailSubPanel;->HEIGHT:I

    int-to-float v2, v2

    :goto_2
    aput v2, v1, v4

    .line 354
    if-eqz p2, :cond_4

    :goto_3
    aput v5, v1, v3

    .line 355
    const-string v2, "translationY"

    invoke-static {p0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 356
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 358
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .end local v1    # "values":[F
    :cond_2
    move v2, v4

    .line 351
    goto :goto_1

    .restart local v1    # "values":[F
    :cond_3
    move v2, v5

    .line 353
    goto :goto_2

    .line 354
    :cond_4
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftFragment;->mFragmentRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v5, v2

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 115
    const v1, 0x7f03015a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/GiftFragment;->initViews(Landroid/view/View;)V

    .line 117
    invoke-direct {p0}, Lcom/tudou/ui/fragment/GiftFragment;->initData()V

    .line 118
    return-object v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 124
    sget-boolean v0, Lcom/tudou/ui/fragment/GiftFragment;->isNeedRefresh:Z

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tudou/ui/fragment/GiftFragment;->isNeedRefresh:Z

    .line 126
    invoke-direct {p0}, Lcom/tudou/ui/fragment/GiftFragment;->initData()V

    .line 128
    :cond_0
    return-void
.end method

.method public setAnimationCallBack(Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;)V
    .locals 0
    .param p1, "callBack"    # Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/tudou/ui/fragment/GiftFragment;->mCallBack:Lcom/tudou/ui/fragment/GiftFragment$GiftFragmentAnimationCallBack;

    .line 393
    return-void
.end method

.method public setLoginListener(Lcom/tudou/ui/fragment/GiftFragment$LoginListener;)V
    .locals 0
    .param p1, "l"    # Lcom/tudou/ui/fragment/GiftFragment$LoginListener;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/tudou/ui/fragment/GiftFragment;->mLoginListener:Lcom/tudou/ui/fragment/GiftFragment$LoginListener;

    .line 416
    return-void
.end method

.method public setOnCloseListener(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/tudou/ui/fragment/GiftFragment;->mOnCloseListener:Ljava/lang/Runnable;

    .line 408
    return-void
.end method
