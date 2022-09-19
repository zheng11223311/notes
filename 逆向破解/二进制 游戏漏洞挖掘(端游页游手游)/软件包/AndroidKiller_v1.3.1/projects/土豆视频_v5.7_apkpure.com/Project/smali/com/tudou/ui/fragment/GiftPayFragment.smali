.class public Lcom/tudou/ui/fragment/GiftPayFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "GiftPayFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final ADD_BUTTON_CLICK:I = 0x7

.field public static final ALI_PAY_FAILED:I = 0x4

.field public static final ALI_PAY_SUCCESS:I = 0x3

.field private static final GET_ORDER_INFO_FAILED:I = 0x2

.field private static final GET_ORDER_INFO_SUCCESS:I = 0x1

.field public static final Hide_PAY_SUCCESS_ANIMATION:I = 0x6

.field private static final MINUS_BUTTON_CLICK:I = 0x8

.field private static final PAY_CHANNEL_ALIPAY:Ljava/lang/String; = "00500130"

.field private static final PAY_CHANNEL_ALIPAY_ACTION_TYPE:Ljava/lang/String; = "orderToGateway"

.field private static final PAY_CHANNEL_WECHAT:Ljava/lang/String; = "00700231"

.field public static final SHOW_PAY_SUCCESS_ANIMATION:I = 0x5


# instance fields
.field private isDown:Z

.field private mAddImg:Landroid/widget/ImageView;

.field private mCoverView:Landroid/view/View;

.field private mData:Lcom/youku/vo/GiftBean$Data;

.field private mGiftImg:Landroid/widget/ImageView;

.field private mGiftItem:Lcom/youku/vo/GiftBean$Data$PresentItem;

.field private mGiftMoney:Landroid/widget/TextView;

.field private mGiftNumEt:Landroid/widget/EditText;

.field private mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

.field private mItemCode:Ljava/lang/String;

.field private mMinusImg:Landroid/widget/ImageView;

.field private mPayBtn:Landroid/widget/TextView;

.field private mPaySuccessView:Lcom/youku/widget/GiftPaySuccessView;

.field private mPopLayout:Landroid/view/View;

.field private mPopTipsTv:Landroid/widget/TextView;

.field private mPopTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;-><init>(Lcom/tudou/ui/fragment/GiftPayFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftPayFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mCoverView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/youku/vo/GiftBean$Data$PresentItem;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftPayFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftItem:Lcom/youku/vo/GiftBean$Data$PresentItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftPayFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/GiftPayFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftPayFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/youku/widget/GiftPaySuccessView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftPayFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPaySuccessView:Lcom/youku/widget/GiftPaySuccessView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/GiftPayFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftPayFragment;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->isDown:Z

    return v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/GiftPayFragment;)Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/GiftPayFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    return-object v0
.end method

.method private initViews(Landroid/view/View;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 200
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "item_code"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mItemCode:Ljava/lang/String;

    .line 201
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "gift_data_bean"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/GiftBean$Data;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mData:Lcom/youku/vo/GiftBean$Data;

    .line 202
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "gift_index"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 203
    .local v1, "index":I
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "gift_resource_id"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 204
    .local v2, "resourceId":I
    const v4, 0x7f0c06b1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 205
    .local v3, "titleTv":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mData:Lcom/youku/vo/GiftBean$Data;

    iget-object v4, v4, Lcom/youku/vo/GiftBean$Data;->presentItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/youku/vo/GiftBean$Data$PresentItem;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftItem:Lcom/youku/vo/GiftBean$Data$PresentItem;

    .line 206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u9001\u793c-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftItem:Lcom/youku/vo/GiftBean$Data$PresentItem;

    iget-object v5, v5, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const v4, 0x7f0c024f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 208
    .local v0, "backImg":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    const v4, 0x7f0c06b5

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftImg:Landroid/widget/ImageView;

    .line 210
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftImg:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    const v4, 0x7f0c06b9

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    .line 213
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 214
    const v4, 0x7f0c06bf

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPayBtn:Landroid/widget/TextView;

    .line 215
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPayBtn:Landroid/widget/TextView;

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 217
    const v4, 0x7f0c06bb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftMoney:Landroid/widget/TextView;

    .line 218
    const v4, 0x7f0c06bd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopTv:Landroid/widget/TextView;

    .line 219
    const v4, 0x7f0c06be

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopTipsTv:Landroid/widget/TextView;

    .line 220
    const v4, 0x7f0c06bc

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopLayout:Landroid/view/View;

    .line 221
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    const-string v5, "1"

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    const v4, 0x7f0c06c1

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/youku/widget/GiftPaySuccessView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPaySuccessView:Lcom/youku/widget/GiftPaySuccessView;

    .line 223
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPaySuccessView:Lcom/youku/widget/GiftPaySuccessView;

    invoke-virtual {v4, p0}, Lcom/youku/widget/GiftPaySuccessView;->setOnAnimationListener(Lcom/youku/widget/GiftPaySuccessView$OnAnimationListener;)V

    .line 224
    const v4, 0x7f0c06c0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mCoverView:Landroid/view/View;

    .line 225
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mCoverView:Landroid/view/View;

    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mCoverView:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 227
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 228
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 229
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-static {v4, v5}, Lcom/youku/util/Util;->showSoftInput(Landroid/app/Activity;Landroid/view/View;)V

    .line 230
    const v4, 0x7f0c06b8

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mMinusImg:Landroid/widget/ImageView;

    .line 231
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mMinusImg:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 232
    const v4, 0x7f0c06ba

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mAddImg:Landroid/widget/ImageView;

    .line 233
    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mAddImg:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 234
    return-void
.end method

.method private pay()V
    .locals 6

    .prologue
    .line 313
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "giftNumStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 315
    .local v0, "giftNum":I
    if-nez v0, :cond_0

    .line 316
    const-string/jumbo v2, "\u586b\u5199\u9519\u8bef"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 324
    :goto_0
    return-void

    .line 317
    :cond_0
    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    .line 318
    const-string/jumbo v2, "\u4eb2\u4f60\u9171\u7d2b\uff0c\u5176\u5b9e\u6211\u4eec\u662f\u62d2\u7edd\u7684"

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 321
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 322
    iget-object v2, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftItem:Lcom/youku/vo/GiftBean$Data$PresentItem;

    iget-object v4, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mData:Lcom/youku/vo/GiftBean$Data;

    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mItemCode:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/tudou/ui/fragment/GiftPayFragment;->getOrderInfo(Ljava/lang/String;Lcom/youku/vo/GiftBean$Data$PresentItem;Lcom/youku/vo/GiftBean$Data;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 3
    .param p1, "img"    # Landroid/widget/ImageView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/tudou/ui/activity/BaseActivity;

    .line 269
    .local v0, "activity":Lcom/tudou/ui/activity/BaseActivity;
    invoke-virtual {v0}, Lcom/tudou/ui/activity/BaseActivity;->getImageWorker()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    .line 270
    .local v1, "imageLoader":Lcom/nostra13/universalimageloader/core/ImageLoader;
    new-instance v2, Lcom/tudou/ui/fragment/GiftPayFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/tudou/ui/fragment/GiftPayFragment$1;-><init>(Lcom/tudou/ui/fragment/GiftPayFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v1, p2, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 291
    return-void
.end method

.method public static setTextEnable(Landroid/widget/TextView;Z)V
    .locals 2
    .param p0, "aTextView"    # Landroid/widget/TextView;
    .param p1, "aEnabled"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 255
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 257
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 258
    const v0, 0x7f020561

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    const v0, 0x7f0900c6

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 261
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 262
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    goto :goto_0
.end method

.method private statistical(Lcom/youku/vo/GiftBean$Data$PresentItem;D)V
    .locals 6
    .param p1, "giftItem"    # Lcom/youku/vo/GiftBean$Data$PresentItem;
    .param p2, "giftNum"    # D

    .prologue
    .line 444
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 445
    .local v1, "giftNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "type"

    iget-object v4, p1, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string/jumbo v3, "t1.find_theshow.choosegiftclick"

    invoke-static {v3, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 448
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 449
    .local v2, "giftNumMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "num"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string/jumbo v3, "t1.find_theshow.donate"

    invoke-static {v3, v2}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    .end local v1    # "giftNameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "giftNumMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 14
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 338
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "giftNumStr":Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    const-string v5, "^(0+)"

    const-string v12, ""

    invoke-virtual {v4, v5, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 341
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 346
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 347
    .local v3, "giftNum":I
    const/16 v5, 0x3e8

    if-le v3, v5, :cond_1

    .line 348
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    const/16 v12, 0x3e8

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftNumEt:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-interface {v12}, Landroid/text/Editable;->length()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 350
    const-string/jumbo v5, "\u4eb2\u4f60\u9171\u7d2b\uff0c\u5176\u5b9e\u6211\u4eec\u662f\u62d2\u7edd\u7684"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 371
    .end local v3    # "giftNum":I
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v5, "\u4eb2\u4f60\u9171\u7d2b\uff0c\u5176\u5b9e\u6211\u4eec\u662f\u62d2\u7edd\u7684"

    invoke-static {v5}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 373
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftMoney:Landroid/widget/TextView;

    const-string/jumbo v12, "\uffe50.00"

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopLayout:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 375
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "giftNum":I
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftItem:Lcom/youku/vo/GiftBean$Data$PresentItem;

    iget-object v5, v5, Lcom/youku/vo/GiftBean$Data$PresentItem;->price:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 354
    .local v6, "giftPrice":D
    int-to-double v12, v3

    mul-double v8, v12, v6

    .line 355
    .local v8, "payMoney":D
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v5, "#.00"

    invoke-direct {v0, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "df":Ljava/text/DecimalFormat;
    invoke-virtual {v0, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "format":Ljava/lang/String;
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftMoney:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "\uffe5"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftItem:Lcom/youku/vo/GiftBean$Data$PresentItem;

    iget-object v5, v5, Lcom/youku/vo/GiftBean$Data$PresentItem;->popularity:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 359
    .local v10, "pop":J
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopTv:Landroid/widget/TextView;

    int-to-long v12, v3

    mul-long/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const/16 v5, 0x9

    if-le v3, v5, :cond_2

    .line 361
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopTipsTv:Landroid/widget/TextView;

    const-string/jumbo v12, "\u4eba\u6c14\u503c~ \u571f\u8c6a\uff0c\u4e48\u4e48\u54d2\uff01"

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_1
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopLayout:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 370
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPayBtn:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-static {v5, v12}, Lcom/tudou/ui/fragment/GiftPayFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    goto/16 :goto_0

    .line 362
    :cond_2
    const/4 v5, 0x4

    if-le v3, v5, :cond_3

    .line 363
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopTipsTv:Landroid/widget/TextView;

    const-string/jumbo v12, "\u4eba\u6c14\u503c~ \u4efb\u6027\u4e00\u4e0b\uff0c\u6ca1\u4ec0\u4e48\u5927\u4e0d\u4e86"

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 364
    :cond_3
    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    .line 365
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopTipsTv:Landroid/widget/TextView;

    const-string/jumbo v12, "\u4eba\u6c14\u503c~ \u5c11\u5e74\uff0c\u770b\u597d\u4f60"

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 367
    :cond_4
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopTipsTv:Landroid/widget/TextView;

    const-string/jumbo v12, "\u4eba\u6c14\u503c~ \u77ee\u6cb9\uff0c\u7ed9\u529b\u54e6"

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 378
    .end local v0    # "df":Ljava/text/DecimalFormat;
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "giftNum":I
    .end local v6    # "giftPrice":D
    .end local v8    # "payMoney":D
    .end local v10    # "pop":J
    :cond_5
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPayBtn:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-static {v5, v12}, Lcom/tudou/ui/fragment/GiftPayFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 379
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mGiftMoney:Landroid/widget/TextView;

    const-string/jumbo v12, "\uffe50.00"

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v5, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mPopLayout:Landroid/view/View;

    const/4 v12, 0x4

    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 329
    return-void
.end method

.method public getOrderInfo(Ljava/lang/String;Lcom/youku/vo/GiftBean$Data$PresentItem;Lcom/youku/vo/GiftBean$Data;Ljava/lang/String;)V
    .locals 20
    .param p1, "giftNumStr"    # Ljava/lang/String;
    .param p2, "giftItem"    # Lcom/youku/vo/GiftBean$Data$PresentItem;
    .param p3, "data"    # Lcom/youku/vo/GiftBean$Data;
    .param p4, "itemCode"    # Ljava/lang/String;

    .prologue
    .line 385
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    :goto_0
    return-void

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tudou/ui/fragment/GiftPayFragment;->mCoverView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 389
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 390
    .local v10, "giftNum":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/youku/vo/GiftBean$Data$PresentItem;->price:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 391
    .local v12, "giftPrice":D
    int-to-double v2, v10

    mul-double v16, v2, v12

    .line 392
    .local v16, "payMoney":D
    int-to-double v2, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/GiftPayFragment;->statistical(Lcom/youku/vo/GiftBean$Data$PresentItem;D)V

    .line 393
    new-instance v9, Ljava/math/BigDecimal;

    move-wide/from16 v0, v16

    invoke-direct {v9, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 394
    .local v9, "b":Ljava/math/BigDecimal;
    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v16

    .line 397
    const-string v2, "byron"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payMoney = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getGiftOrderUrl()Ljava/lang/String;

    move-result-object v15

    .line 399
    .local v15, "url":Ljava/lang/String;
    const-class v2, Lcom/youku/network/IHttpRequest;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/youku/network/IHttpRequest;

    .line 401
    .local v14, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v11, Lcom/youku/network/HttpIntent;

    const-string v18, "POST"

    const/16 v19, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const-string v3, "00500130"

    const-string v4, "orderToGateway"

    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/youku/vo/GiftBean$Data;->widgetId:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/youku/vo/GiftBean$Data$PresentItem;->presentId:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v5, p4

    invoke-static/range {v2 .. v8}, Lcom/youku/http/TudouURLContainer;->getGiftOrderPostData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v15, v0, v1, v2}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 406
    .local v11, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/GiftPayFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/tudou/ui/fragment/GiftPayFragment$2;-><init>(Lcom/tudou/ui/fragment/GiftPayFragment;)V

    invoke-interface {v14, v11, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    goto/16 :goto_0
.end method

.method public onAnimationEnd()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 189
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 295
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 297
    :sswitch_0
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/GiftPayFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 300
    :sswitch_1
    const-string v0, "gift_pay"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    const-string/jumbo v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/GiftPayFragment;->pay()V

    goto :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c024f -> :sswitch_0
        0x7f0c06bf -> :sswitch_1
    .end sparse-switch
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
    .line 194
    const v1, 0x7f03015d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "root":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/GiftPayFragment;->initViews(Landroid/view/View;)V

    .line 196
    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onPause()V

    .line 239
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 240
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 241
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 242
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->removeMessages(I)V

    .line 247
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 251
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 252
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i2"    # I
    .param p4, "i3"    # I

    .prologue
    .line 334
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 96
    :goto_0
    return v0

    .line 81
    :pswitch_0
    iput-boolean v0, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->isDown:Z

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0c06ba

    if-ne v1, v2, :cond_0

    .line 83
    iget-object v1, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mAddImg:Landroid/widget/ImageView;

    const v2, 0x7f02062b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    iget-object v1, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mMinusImg:Landroid/widget/ImageView;

    const v2, 0x7f020630

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 87
    iget-object v1, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mHandler:Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tudou/ui/fragment/GiftPayFragment$MyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 91
    :pswitch_1
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->isDown:Z

    .line 92
    iget-object v1, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mMinusImg:Landroid/widget/ImageView;

    const v2, 0x7f02062f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object v1, p0, Lcom/tudou/ui/fragment/GiftPayFragment;->mAddImg:Landroid/widget/ImageView;

    const v2, 0x7f02062a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
