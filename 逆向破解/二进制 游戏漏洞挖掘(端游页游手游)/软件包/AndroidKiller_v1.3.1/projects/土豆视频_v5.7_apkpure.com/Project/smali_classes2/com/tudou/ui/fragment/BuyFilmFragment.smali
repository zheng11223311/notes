.class public Lcom/tudou/ui/fragment/BuyFilmFragment;
.super Landroid/app/DialogFragment;
.source "BuyFilmFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;
    }
.end annotation


# static fields
.field public static final ARGUMENTS_EXTRA_AID:Ljava/lang/String; = "arguments.extra.aid"

.field public static final ARGUMENTS_EXTRA_COPRICE:Ljava/lang/String; = "arguments.extra.coprice"

.field public static final ARGUMENTS_EXTRA_DURATION:Ljava/lang/String; = "arguments.extra.duration"

.field public static final ARGUMENTS_EXTRA_ORIPRICE:Ljava/lang/String; = "arguments.extra.oriprice"

.field public static final ARGUMENTS_EXTRA_PAY_TYPE:Ljava/lang/String; = "arguments.extra.pay.type"

.field public static final ARGUMENTS_EXTRA_TITLE:Ljava/lang/String; = "arguments.extra.title"

.field private static final GET_MYTICKETS_FAILED:I = 0x30d42

.field private static final GET_MYTICKETS_SUCCESS:I = 0x30d41

.field private static final MSG_GET_PAY_TICKETS_FAILED:I = 0x3ea

.field private static final MSG_GET_PAY_TICKETS_SUCCESS:I = 0x3e9

.field private static final MSG_GET_VERIFICATION_FAILED:I = 0x2

.field private static final MSG_GET_VERIFICATION_SUCCESS:I = 0x1

.field private static mActivity:Landroid/app/Activity;

.field private static mCallBack:Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;

.field public static mDialogFragment:Landroid/app/DialogFragment;


# instance fields
.field private mCaptchaResult:Lcom/youku/vo/CaptchaResult;

.field private mCode:Ljava/lang/String;

.field private mCodeCaptche:Ljava/lang/String;

.field private mCodeTickets:Ljava/lang/String;

.field private mCount:I

.field private mDuration:F

.field private mEdtCaptchaTickets:Landroid/widget/EditText;

.field private mEdtCodeTickets:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mImgCaptchaTickets:Landroid/widget/ImageView;

.field private mImgClose:Landroid/widget/ImageView;

.field private mImgRuleCheck:Landroid/widget/ImageView;

.field private mIsHasTickets:Z

.field private mIsPaySuccess:Z

.field private mLayoutIndex:Landroid/view/View;

.field private mLayoutMoney:Landroid/view/View;

.field private mLayoutTickets:Landroid/view/View;

.field private mLayoutTicketsUse:Landroid/view/View;

.field private mPayConfirmEnable:Z

.field private mPrice:Ljava/lang/String;

.field private mShowID:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTxtConfirmMoney:Landroid/widget/TextView;

.field private mTxtConfirmTickets:Landroid/widget/TextView;

.field private mTxtConfirmTicketsUse:Landroid/widget/TextView;

.field private mTxtCountTicketsUse:Landroid/widget/TextView;

.field private mTxtDurationIndex:Landroid/widget/TextView;

.field private mTxtDurationMoney:Landroid/widget/TextView;

.field private mTxtDurationTickets:Landroid/widget/TextView;

.field private mTxtDurationTicketsUse:Landroid/widget/TextView;

.field private mTxtGoMoneyIndex:Landroid/widget/TextView;

.field private mTxtGoMoneyTickets:Landroid/widget/TextView;

.field private mTxtGoMoneyTicketsUse:Landroid/widget/TextView;

.field private mTxtGoTicketsIndex:Landroid/widget/TextView;

.field private mTxtGoTicketsMoney:Landroid/widget/TextView;

.field private mTxtGoVipPrivilege:Landroid/widget/TextView;

.field private mTxtPriceMoney:Landroid/widget/TextView;

.field private mTxtRuleMoney:Landroid/widget/TextView;

.field private mTxtTitleIndex:Landroid/widget/TextView;

.field private mTxtTitleMoney:Landroid/widget/TextView;

.field private mTxtTitleTickets:Landroid/widget/TextView;

.field private mTxtTitleTicketsUse:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mVipPrice:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPayConfirmEnable:Z

    .line 101
    new-instance v0, Lcom/youku/vo/CaptchaResult;

    invoke-direct {v0}, Lcom/youku/vo/CaptchaResult;-><init>()V

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCaptchaResult:Lcom/youku/vo/CaptchaResult;

    .line 109
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mIsPaySuccess:Z

    .line 110
    iput-boolean v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mIsHasTickets:Z

    .line 114
    new-instance v0, Lcom/tudou/ui/fragment/BuyFilmFragment$1;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$1;-><init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mHandler:Landroid/os/Handler;

    .line 651
    return-void
.end method

.method public static ShowBuyFilmFragment(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "aBundle"    # Landroid/os/Bundle;
    .param p2, "callBack"    # Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;

    .prologue
    .line 235
    sget-object v1, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDialogFragment:Landroid/app/DialogFragment;

    if-nez v1, :cond_0

    .line 236
    new-instance v1, Lcom/tudou/ui/fragment/BuyFilmFragment;

    invoke-direct {v1}, Lcom/tudou/ui/fragment/BuyFilmFragment;-><init>()V

    sput-object v1, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDialogFragment:Landroid/app/DialogFragment;

    .line 237
    sput-object p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mActivity:Landroid/app/Activity;

    .line 239
    :cond_0
    if-eqz p1, :cond_1

    .line 240
    sget-object v1, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1, p1}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 243
    :cond_1
    if-eqz p2, :cond_2

    .line 244
    sput-object p2, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCallBack:Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;

    .line 246
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 248
    .local v0, "ft":Landroid/app/FragmentTransaction;
    sget-object v1, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDialogFragment:Landroid/app/DialogFragment;

    const-string v2, "buyFilm"

    invoke-virtual {v1, v0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    .line 249
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/BuyFilmFragment;)Lcom/youku/vo/CaptchaResult;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCaptchaResult:Lcom/youku/vo/CaptchaResult;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/BuyFilmFragment;Lcom/youku/vo/CaptchaResult;)Lcom/youku/vo/CaptchaResult;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # Lcom/youku/vo/CaptchaResult;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCaptchaResult:Lcom/youku/vo/CaptchaResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgCaptchaTickets:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/BuyFilmFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;

    .prologue
    .line 52
    iget v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/tudou/ui/fragment/BuyFilmFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtCountTicketsUse:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tudou/ui/fragment/BuyFilmFragment;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setCount(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/tudou/ui/fragment/BuyFilmFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setTicketsUseVisibility(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/tudou/ui/fragment/BuyFilmFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setMoneyVisibility(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/tudou/ui/fragment/BuyFilmFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setIndexVisibility(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCaptchaTickets:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400()Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCallBack:Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tudou/ui/fragment/BuyFilmFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mIsPaySuccess:Z

    return p1
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/BuyFilmFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/BuyFilmFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mIsHasTickets:Z

    return v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/BuyFilmFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mIsHasTickets:Z

    return p1
.end method

.method static synthetic access$902(Lcom/tudou/ui/fragment/BuyFilmFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/BuyFilmFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCode:Ljava/lang/String;

    return-object p1
.end method

.method private buyWithTickets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "show_id"    # Ljava/lang/String;
    .param p3, "vcode_id"    # Ljava/lang/String;
    .param p4, "vcode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 534
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 535
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-static {p1, p2, p3, p4}, Lcom/youku/http/TudouURLContainer;->getUserPayTicketsUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 538
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/BuyFilmFragment$4;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$4;-><init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 559
    return-void
.end method

.method private getCaptcha()Z
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCaptchaTickets:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCaptchaTickets:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 572
    :cond_0
    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 573
    const/4 v0, 0x0

    .line 576
    :goto_0
    return v0

    .line 575
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCaptchaTickets:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCodeCaptche:Ljava/lang/String;

    .line 576
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCode()Z
    .locals 2

    .prologue
    .line 562
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCodeTickets:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCodeTickets:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    :cond_0
    const-string v0, "\u8bf7\u8f93\u5165\u89c2\u5f71\u5238\u7801"

    invoke-static {v0}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x0

    .line 567
    :goto_0
    return v0

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCodeTickets:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCodeTickets:Ljava/lang/String;

    .line 567
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getMyTicketsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/String;
    .param p2, "type_ticket"    # Ljava/lang/String;
    .param p3, "psize"    # Ljava/lang/String;
    .param p4, "pnumber"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 625
    sget-object v2, Lcom/tudou/ui/fragment/BuyFilmFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/youku/widget/YoukuLoading;->show(Landroid/content/Context;)V

    .line 626
    const-class v2, Lcom/youku/network/IHttpRequest;

    invoke-static {v2, v5}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 627
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    const-string v2, "1"

    const-string v3, "50"

    const-string v4, "1"

    invoke-static {p1, v2, v3, v4}, Lcom/youku/http/TudouURLContainer;->getMyTicketsListUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v5, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 630
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v2, Lcom/tudou/ui/fragment/BuyFilmFragment$6;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$6;-><init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V

    invoke-interface {v1, v0, v2}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 649
    return-void
.end method

.method private initIndex()V
    .locals 3

    .prologue
    .line 298
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0466

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutIndex:Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0469

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoMoneyIndex:Landroid/widget/TextView;

    .line 300
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoMoneyIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143\u8d2d\u4e70\u672c\u7247"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoMoneyIndex:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c046a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoTicketsIndex:Landroid/widget/TextView;

    .line 307
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoTicketsIndex:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c046b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoVipPrivilege:Landroid/widget/TextView;

    .line 309
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoVipPrivilege:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0467

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtTitleIndex:Landroid/widget/TextView;

    .line 311
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtTitleIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0468

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtDurationIndex:Landroid/widget/TextView;

    .line 313
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtDurationIndex:Landroid/widget/TextView;

    iget v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDuration:F

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setDuration(Landroid/widget/TextView;F)V

    .line 314
    return-void

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoMoneyIndex:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143\u8d2d\u4e70\u672c\u7247"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private initMoney()V
    .locals 3

    .prologue
    .line 334
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c046d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutMoney:Landroid/view/View;

    .line 335
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0479

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoTicketsMoney:Landroid/widget/TextView;

    .line 336
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoTicketsMoney:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 337
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0477

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtRuleMoney:Landroid/widget/TextView;

    .line 338
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0478

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmMoney:Landroid/widget/TextView;

    .line 339
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmMoney:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0476

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgRuleCheck:Landroid/widget/ImageView;

    .line 341
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgRuleCheck:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c046e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtTitleMoney:Landroid/widget/TextView;

    .line 343
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtTitleMoney:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0472

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtPriceMoney:Landroid/widget/TextView;

    .line 345
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtPriceMoney:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    :goto_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c046f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtDurationMoney:Landroid/widget/TextView;

    .line 351
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtDurationMoney:Landroid/widget/TextView;

    iget v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDuration:F

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setDuration(Landroid/widget/TextView;F)V

    .line 352
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setRuleText()V

    .line 353
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtPriceMoney:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPrice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private initTickets()V
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c047a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTickets:Landroid/view/View;

    .line 318
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0481

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgCaptchaTickets:Landroid/widget/ImageView;

    .line 319
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgCaptchaTickets:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0483

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoMoneyTickets:Landroid/widget/TextView;

    .line 321
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoMoneyTickets:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0482

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmTickets:Landroid/widget/TextView;

    .line 323
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmTickets:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c047e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCodeTickets:Landroid/widget/EditText;

    .line 325
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0480

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCaptchaTickets:Landroid/widget/EditText;

    .line 326
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c047b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtTitleTickets:Landroid/widget/TextView;

    .line 327
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtTitleTickets:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c047c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtDurationTickets:Landroid/widget/TextView;

    .line 329
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtDurationTickets:Landroid/widget/TextView;

    iget v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDuration:F

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setDuration(Landroid/widget/TextView;F)V

    .line 330
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->verify()V

    .line 331
    return-void
.end method

.method private initTicketsUse()V
    .locals 3

    .prologue
    .line 356
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0484

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTicketsUse:Landroid/view/View;

    .line 357
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0485

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtTitleTicketsUse:Landroid/widget/TextView;

    .line 358
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtTitleTicketsUse:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u300a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0486

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtDurationTicketsUse:Landroid/widget/TextView;

    .line 360
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0488

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtCountTicketsUse:Landroid/widget/TextView;

    .line 361
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtCountTicketsUse:Landroid/widget/TextView;

    iget v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCount:I

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setCount(Landroid/widget/TextView;I)V

    .line 362
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0489

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmTicketsUse:Landroid/widget/TextView;

    .line 363
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmTicketsUse:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c048a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoMoneyTicketsUse:Landroid/widget/TextView;

    .line 365
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtGoMoneyTicketsUse:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtDurationTicketsUse:Landroid/widget/TextView;

    iget v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDuration:F

    invoke-direct {p0, v0, v1}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setDuration(Landroid/widget/TextView;F)V

    .line 367
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const v1, 0x7f0c0465

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgClose:Landroid/widget/ImageView;

    .line 281
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgClose:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setBundle()V

    .line 283
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->initIndex()V

    .line 284
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->initTickets()V

    .line 285
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->initMoney()V

    .line 286
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->initTicketsUse()V

    .line 287
    const-string v0, "1"

    const-string v1, "1"

    const-string v2, "50"

    const-string v3, "1"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getMyTicketsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method private setBundle()V
    .locals 3

    .prologue
    .line 580
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 581
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "arguments.extra.aid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mShowID:Ljava/lang/String;

    .line 582
    const-string v1, "arguments.extra.oriprice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPrice:Ljava/lang/String;

    .line 583
    const-string v1, "arguments.extra.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTitle:Ljava/lang/String;

    .line 584
    const-string v1, "arguments.extra.coprice"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    .line 585
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPrice:Ljava/lang/String;

    iput-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    .line 588
    :cond_1
    const-string v1, "arguments.extra.duration"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x41c00000    # 24.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDuration:F

    .line 589
    return-void
.end method

.method private setCount(Landroid/widget/TextView;I)V
    .locals 6
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "count"    # I

    .prologue
    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u6709 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5f20\u901a\u7528\u89c2\u5f71\u5238\u53ef\u4ee5\u4f7f\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 620
    .local v1, "sp":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0xff

    const/16 v4, 0x61

    const/16 v5, 0x2a

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xb

    const/16 v5, 0x22

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 621
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 622
    return-void
.end method

.method private setDuration(Landroid/widget/TextView;F)V
    .locals 6
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "duration"    # F

    .prologue
    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6709\u6548\u671f "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    float-to-int v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5c0f\u65f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 613
    .local v1, "sp":Landroid/text/SpannableString;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/16 v3, 0xff

    const/16 v4, 0x61

    const/16 v5, 0x2a

    invoke-static {v3, v4, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    const/16 v5, 0x22

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 614
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    return-void
.end method

.method private setIndexVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 486
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutIndex:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 487
    if-nez p1, :cond_0

    .line 488
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutMoney:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTickets:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTicketsUse:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 495
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutMoney:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTickets:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMoneyVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 510
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutMoney:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 511
    if-nez p1, :cond_0

    .line 512
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTickets:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutIndex:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTicketsUse:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 522
    :goto_0
    return-void

    .line 516
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTickets:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutIndex:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 518
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPayConfirmEnable:Z

    .line 519
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmMoney:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgRuleCheck:Landroid/widget/ImageView;

    const v1, 0x7f0203be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setRuleText()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x4b

    .line 592
    sget-object v2, Lcom/tudou/ui/fragment/BuyFilmFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 594
    .local v1, "sp":Landroid/text/SpannableString;
    new-instance v2, Lcom/tudou/ui/fragment/BuyFilmFragment$5;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$5;-><init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 603
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-static {v5, v5, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x22

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 605
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtRuleMoney:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 606
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtRuleMoney:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 607
    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtRuleMoney:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    return-void
.end method

.method private setTicketsUseVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/16 v1, 0x8

    .line 525
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTicketsUse:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 526
    if-nez p1, :cond_0

    .line 527
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTickets:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 528
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutIndex:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutMoney:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_0
    return-void
.end method

.method private setTicketsVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 498
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTickets:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 499
    if-nez p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutMoney:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 501
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutIndex:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 502
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutTicketsUse:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutMoney:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mLayoutIndex:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private verify()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 370
    invoke-static {}, Lcom/youku/http/TudouURLContainer;->getCaptchaUrl()Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, "url":Ljava/lang/String;
    const-class v3, Lcom/youku/network/IHttpRequest;

    invoke-static {v3, v4}, Lcom/youku/service/YoukuService;->getService(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/network/IHttpRequest;

    .line 372
    .local v1, "httpRequest":Lcom/youku/network/IHttpRequest;
    new-instance v0, Lcom/youku/network/HttpIntent;

    invoke-direct {v0, v2, v4}, Lcom/youku/network/HttpIntent;-><init>(Ljava/lang/String;Z)V

    .line 373
    .local v0, "httpIntent":Lcom/youku/network/HttpIntent;
    new-instance v3, Lcom/tudou/ui/fragment/BuyFilmFragment$3;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$3;-><init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V

    invoke-interface {v1, v0, v3}, Lcom/youku/network/IHttpRequest;->request(Lcom/youku/network/HttpIntent;Lcom/youku/network/IHttpRequest$IHttpRequestCallBack;)V

    .line 397
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0d02c3

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 403
    :sswitch_0
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 406
    :sswitch_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->verify()V

    goto :goto_0

    .line 409
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setMoneyVisibility(I)V

    goto :goto_0

    .line 412
    :sswitch_3
    const-string v0, "t1.pay_buyvideo.useticket"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 413
    const-string v0, "pay_tickets"

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/youku/util/Util;->isGoOn(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getCaptcha()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCodeTickets:Ljava/lang/String;

    iget-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mShowID:Ljava/lang/String;

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCaptchaResult:Lcom/youku/vo/CaptchaResult;

    iget-object v2, v2, Lcom/youku/vo/CaptchaResult;->codeid:Ljava/lang/String;

    iget-object v3, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCodeCaptche:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tudou/ui/fragment/BuyFilmFragment;->buyWithTickets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->verify()V

    goto :goto_0

    .line 426
    :sswitch_4
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mIsHasTickets:Z

    if-eqz v0, :cond_2

    .line 427
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setTicketsUseVisibility(I)V

    goto :goto_0

    .line 429
    :cond_2
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setTicketsVisibility(I)V

    goto :goto_0

    .line 433
    :sswitch_5
    const-string v0, "t1.pay_buyvideo.buyvideo"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 434
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 435
    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mVipPrice:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v7, v0, v1

    .line 439
    .local v7, "price":F
    invoke-static {}, Lcom/tudou/alipay/PayManager;->getInstance()Lcom/tudou/alipay/PayManager;

    move-result-object v0

    sget-object v1, Lcom/tudou/ui/fragment/BuyFilmFragment;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mShowID:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "alipay"

    invoke-virtual/range {v0 .. v5}, Lcom/tudou/alipay/PayManager;->payVod(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    .end local v7    # "price":F
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setMoneyVisibility(I)V

    goto/16 :goto_0

    .line 445
    :sswitch_7
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    iget-boolean v0, v0, Lcom/youku/vo/UserBean;->isVip:Z

    if-eqz v0, :cond_4

    .line 446
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setTicketsVisibility(I)V

    goto/16 :goto_0

    .line 448
    :cond_4
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mIsHasTickets:Z

    if-eqz v0, :cond_5

    .line 449
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setTicketsUseVisibility(I)V

    goto/16 :goto_0

    .line 451
    :cond_5
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setTicketsVisibility(I)V

    goto/16 :goto_0

    .line 456
    :sswitch_8
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPayConfirmEnable:Z

    if-eqz v0, :cond_6

    .line 457
    iput-boolean v2, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPayConfirmEnable:Z

    .line 458
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmMoney:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmMoney:Landroid/widget/TextView;

    const v1, 0x7f020a37

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 460
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgRuleCheck:Landroid/widget/ImageView;

    const v1, 0x7f0203bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 462
    :cond_6
    iput-boolean v3, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mPayConfirmEnable:Z

    .line 463
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmMoney:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mTxtConfirmMoney:Landroid/widget/TextView;

    const v1, 0x7f020a36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 465
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mImgRuleCheck:Landroid/widget/ImageView;

    const v1, 0x7f0203be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 469
    :sswitch_9
    const-string v0, "t1.pay_buyvideo.buyvip"

    invoke-static {v0, v1}, Lcom/youku/util/Util;->unionOnEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 470
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 471
    .local v6, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mActivity:Landroid/app/Activity;

    const-class v1, Lcom/tudou/ui/activity/VipPrivilegeActivity;

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 472
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 475
    .end local v6    # "intent":Landroid/content/Intent;
    :sswitch_a
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setMoneyVisibility(I)V

    goto/16 :goto_0

    .line 478
    :sswitch_b
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCodeTickets:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    invoke-direct {p0, v2}, Lcom/tudou/ui/fragment/BuyFilmFragment;->setTicketsVisibility(I)V

    goto/16 :goto_0

    .line 401
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0c0465 -> :sswitch_0
        0x7f0c0469 -> :sswitch_6
        0x7f0c046a -> :sswitch_7
        0x7f0c046b -> :sswitch_9
        0x7f0c0476 -> :sswitch_8
        0x7f0c0478 -> :sswitch_5
        0x7f0c0479 -> :sswitch_4
        0x7f0c0481 -> :sswitch_1
        0x7f0c0482 -> :sswitch_3
        0x7f0c0483 -> :sswitch_2
        0x7f0c0489 -> :sswitch_b
        0x7f0c048a -> :sswitch_a
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mActivity:Landroid/app/Activity;

    .line 254
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mDialogFragment:Landroid/app/DialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 255
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 256
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 261
    const v0, 0x7f0300fb

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    .line 262
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    invoke-direct {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->initView()V

    .line 266
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/BuyFilmFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/tudou/ui/fragment/BuyFilmFragment$2;

    invoke-direct {v1, p0}, Lcom/tudou/ui/fragment/BuyFilmFragment$2;-><init>(Lcom/tudou/ui/fragment/BuyFilmFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 276
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mIsPaySuccess:Z

    if-nez v0, :cond_0

    .line 229
    sget-object v0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mCallBack:Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;

    invoke-virtual {v0}, Lcom/tudou/ui/fragment/BuyFilmFragment$BuyFilmCallBack;->onFail()V

    .line 231
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCaptchaTickets:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/tudou/ui/fragment/BuyFilmFragment;->mEdtCodeTickets:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 294
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    .line 295
    return-void
.end method
