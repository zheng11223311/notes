.class public Lcom/tudou/ui/fragment/PhoneLoginFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "PhoneLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;
    }
.end annotation


# static fields
.field private static final MAX_TIME:J = 0xea60L

.field public static final MSG_LOGIN_PHONE:Ljava/lang/String; = "msg_login_phone"

.field private static final TAG:Ljava/lang/String; = "PhoneLoginFragment"


# instance fields
.field private mCancelSpeed1:Landroid/view/View;

.field private mCancelSpeed2:Landroid/view/View;

.field private mCurrentStart:I

.field private mEdtLoginNameSpeed:Landroid/widget/EditText;

.field private mEdtPwdSpeed:Landroid/widget/EditText;

.field private mLightShowHandler:Landroid/os/Handler;

.field private mRemainingTime:J

.field private mTimeCount:Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;

.field private mTxtLogin:Landroid/widget/TextView;

.field private mTxtMesPassword:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 66
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mRemainingTime:J

    .line 296
    new-instance v0, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment$5;-><init>(Lcom/tudou/ui/fragment/PhoneLoginFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mLightShowHandler:Landroid/os/Handler;

    .line 339
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mLightShowHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTimeCount:Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;

    return-object v0
.end method

.method static synthetic access$402(Lcom/tudou/ui/fragment/PhoneLoginFragment;Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;)Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;
    .param p1, "x1"    # Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTimeCount:Lcom/tudou/ui/fragment/PhoneLoginFragment$TimeCount;

    return-object p1
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtPwdSpeed:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTxtLogin:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/PhoneLoginFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mRemainingTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/PhoneLoginFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mRemainingTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/PhoneLoginFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneLoginFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTxtMesPassword:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkInput()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 235
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtPwdSpeed:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "password":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 238
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 247
    :goto_0
    return v2

    .line 240
    :cond_0
    invoke-static {v1}, Lcom/youku/util/Util;->checkPhone(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 241
    const v3, 0x7f0d02d3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_2

    .line 244
    const-string v3, "\u77ed\u4fe1\u5bc6\u7801\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkMsgInput()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 260
    :goto_0
    return v1

    .line 256
    :cond_0
    invoke-static {v0}, Lcom/youku/util/Util;->checkPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    const v2, 0x7f0d02d3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 260
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getMsg()V
    .locals 4

    .prologue
    .line 268
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 269
    .local v0, "login":Lcom/youku/service/login/ILogin;
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "mobile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d01c4

    invoke-static {v2, v3}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 271
    const-string v2, "1"

    new-instance v3, Lcom/tudou/ui/fragment/PhoneLoginFragment$4;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment$4;-><init>(Lcom/tudou/ui/fragment/PhoneLoginFragment;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/youku/service/login/ILogin;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 294
    return-void
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 129
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 131
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 133
    .local v2, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    const v3, 0x7f0d0215

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 137
    .local v0, "img_back":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    new-instance v3, Lcom/tudou/ui/fragment/PhoneLoginFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment$1;-><init>(Lcom/tudou/ui/fragment/PhoneLoginFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    new-instance v3, Lcom/tudou/ui/fragment/PhoneLoginFragment$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment$2;-><init>(Lcom/tudou/ui/fragment/PhoneLoginFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0576

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    .line 92
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0577

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtPwdSpeed:Landroid/widget/EditText;

    .line 95
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCancelSpeed1:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCancelSpeed2:Landroid/view/View;

    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c051e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTxtLogin:Landroid/widget/TextView;

    .line 100
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mLightShowHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 101
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTxtMesPassword:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCancelSpeed1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCancelSpeed2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTxtLogin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTxtMesPassword:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCancelSpeed1:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtPwdSpeed:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCancelSpeed2:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 111
    return-void
.end method

.method private setRemText()V
    .locals 3

    .prologue
    .line 329
    const-string v1, "msg_login_phone"

    invoke-static {v1}, Lcom/tudou/android/Youku;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 334
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 116
    const-string v0, "Youku"

    const-string v1, "PhoneLoginFragment onActivityCreated"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 155
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCancelSpeed1:Landroid/view/View;

    if-ne v4, p1, :cond_1

    .line 156
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCancelSpeed2:Landroid/view/View;

    if-ne v4, p1, :cond_2

    .line 159
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtPwdSpeed:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtPwdSpeed:Landroid/widget/EditText;

    invoke-static {v4}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTxtLogin:Landroid/widget/TextView;

    if-ne v4, p1, :cond_3

    .line 162
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->checkInput()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 164
    .local v0, "login":Lcom/youku/service/login/ILogin;
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtLoginNameSpeed:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "mobile":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mEdtPwdSpeed:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "verCode":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    .line 167
    .local v2, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v2, v1}, Lcom/youku/vo/UserBean;->setPhoneNumber(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v2, v3}, Lcom/youku/vo/UserBean;->setVertifiyCode(Ljava/lang/String;)V

    .line 169
    invoke-static {v3}, Lcom/tudou/ui/fragment/LoginFragment;->genPassword(Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v5, 0x7f0d0217

    invoke-static {v4, v5}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 171
    new-instance v4, Lcom/tudou/ui/fragment/PhoneLoginFragment$3;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment$3;-><init>(Lcom/tudou/ui/fragment/PhoneLoginFragment;)V

    invoke-interface {v0, v2, v4}, Lcom/youku/service/login/ILogin;->loginPhoneSpeed(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V

    goto :goto_0

    .line 226
    .end local v0    # "login":Lcom/youku/service/login/ILogin;
    .end local v1    # "mobile":Ljava/lang/String;
    .end local v2    # "userBean":Lcom/youku/vo/UserBean;
    .end local v3    # "verCode":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mTxtMesPassword:Landroid/widget/TextView;

    if-ne v4, p1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->checkMsgInput()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->getMsg()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 72
    const-string v1, "Youku"

    const-string v2, "PhoneLoginFragment onCreateView"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAG"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mCurrentStart:I

    .line 75
    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 76
    const v1, 0x7f03012e

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mFragmentView:Landroid/view/View;

    .line 78
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->initView()V

    .line 85
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneLoginFragment;->mFragmentView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "Youku"

    const-string v1, "PhoneLoginFragment onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneLoginFragment;->initTitle()V

    .line 123
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 124
    return-void
.end method
