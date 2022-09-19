.class public Lcom/tudou/ui/fragment/PhoneRegistFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "PhoneRegistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;
    }
.end annotation


# static fields
.field private static final MAX_TIME:J = 0xea60L

.field private static final TAG:Ljava/lang/String; = "PhoneRegistFragment"

.field public static final account_url:Ljava/lang/String; = "http://www.tudou.com/about/account.php"


# instance fields
.field private mBtnPhoneRegist:Landroid/widget/TextView;

.field private mCancel1:Landroid/view/View;

.field private mCancel2:Landroid/view/View;

.field private mCurrentStart:I

.field private mEdtPhoneNumber:Landroid/widget/EditText;

.field private mEdtVertifyCode:Landroid/widget/EditText;

.field private mLightShowHandler:Landroid/os/Handler;

.field private mRegistCheckBox:Landroid/widget/CheckBox;

.field private mRemainingTime:J

.field private mTimeCount:Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;

.field private mTxtAgreement:Landroid/widget/TextView;

.field private mTxtGetVertift:Landroid/widget/TextView;

.field private mTxtRegist:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 72
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mRemainingTime:J

    .line 321
    new-instance v0, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment$5;-><init>(Lcom/tudou/ui/fragment/PhoneRegistFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mLightShowHandler:Landroid/os/Handler;

    .line 350
    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTimeCount:Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tudou/ui/fragment/PhoneRegistFragment;Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;)Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;
    .param p1, "x1"    # Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTimeCount:Lcom/tudou/ui/fragment/PhoneRegistFragment$TimeCount;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtVertifyCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mLightShowHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mBtnPhoneRegist:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tudou/ui/fragment/PhoneRegistFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mRemainingTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/tudou/ui/fragment/PhoneRegistFragment;J)J
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;
    .param p1, "x1"    # J

    .prologue
    .line 50
    iput-wide p1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mRemainingTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/tudou/ui/fragment/PhoneRegistFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PhoneRegistFragment;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtGetVertift:Landroid/widget/TextView;

    return-object v0
.end method

.method private checkInput()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "phoneNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtVertifyCode:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "password":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    const v3, 0x7f0d02c3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    .line 220
    :goto_0
    return v2

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mRegistCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 211
    const-string v3, "\u53ea\u6709\u540c\u610f\u534f\u8bae\u624d\u80fd\u6ce8\u518c"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_1
    invoke-static {v1}, Lcom/youku/util/Util;->checkPhone(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    const v3, 0x7f0d02d3

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    .line 217
    const-string v3, "\u9a8c\u8bc1\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {v3}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 220
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkMsgInput()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 256
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 264
    :goto_0
    return v1

    .line 260
    :cond_0
    invoke-static {v0}, Lcom/youku/util/Util;->checkPhone(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 261
    const v2, 0x7f0d02d3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 264
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private doRegist()V
    .locals 6

    .prologue
    .line 269
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 270
    .local v0, "login":Lcom/youku/service/login/ILogin;
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 271
    .local v1, "mobile":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtVertifyCode:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "verCode":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    .line 273
    .local v2, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v2, v1}, Lcom/youku/vo/UserBean;->setPhoneNumber(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v2, v3}, Lcom/youku/vo/UserBean;->setVertifiyCode(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0d039c

    invoke-static {v4, v5}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 276
    new-instance v4, Lcom/tudou/ui/fragment/PhoneRegistFragment$4;

    invoke-direct {v4, p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment$4;-><init>(Lcom/tudou/ui/fragment/PhoneRegistFragment;)V

    invoke-interface {v0, v2, v4}, Lcom/youku/service/login/ILogin;->registPhone(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 317
    return-void
.end method

.method private getMsg()V
    .locals 4

    .prologue
    .line 228
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 229
    .local v0, "login":Lcom/youku/service/login/ILogin;
    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "mobile":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0d01c4

    invoke-static {v2, v3}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 231
    const-string v2, "0"

    new-instance v3, Lcom/tudou/ui/fragment/PhoneRegistFragment$3;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment$3;-><init>(Lcom/tudou/ui/fragment/PhoneRegistFragment;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/youku/service/login/ILogin;->getVerificationCode(Ljava/lang/String;Ljava/lang/String;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 253
    return-void
.end method

.method private goRegist()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const-class v2, Lcom/tudou/ui/activity/RegistActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAG"

    iget v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCurrentStart:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-static {v1, v0}, Lcom/tudou/android/Youku;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 144
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 145
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 147
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 148
    .local v2, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    const v3, 0x7f0d039f

    invoke-virtual {p0, v3}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 152
    .local v0, "img_back":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    new-instance v3, Lcom/tudou/ui/fragment/PhoneRegistFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment$1;-><init>(Lcom/tudou/ui/fragment/PhoneRegistFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v3, Lcom/tudou/ui/fragment/PhoneRegistFragment$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment$2;-><init>(Lcom/tudou/ui/fragment/PhoneRegistFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    .line 100
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtVertifyCode:Landroid/widget/EditText;

    .line 101
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0578

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtGetVertift:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mBtnPhoneRegist:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mBtnPhoneRegist:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tudou/ui/fragment/LoginFragment;->setTextEnable(Landroid/widget/TextView;Z)V

    .line 106
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0582

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtAgreement:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0581

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mRegistCheckBox:Landroid/widget/CheckBox;

    .line 109
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtRegist:Landroid/widget/TextView;

    .line 110
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtRegist:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 111
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtRegist:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 114
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c051c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCancel1:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c051d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCancel2:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mBtnPhoneRegist:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtAgreement:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCancel1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCancel2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtRegist:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtGetVertift:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCancel1:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 126
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtVertifyCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCancel2:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 127
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "Youku"

    const-string v1, "PhoneRegistFragment onActivityCreated"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mBtnPhoneRegist:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->checkInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->doRegist()V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtAgreement:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "http://www.tudou.com/about/account.php"

    const-string v2, "regist_agree"

    const-string v3, "\u6ce8\u518c\u534f\u8bae"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCancel1:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtPhoneNumber:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto :goto_0

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCancel2:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtVertifyCode:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mEdtVertifyCode:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto :goto_0

    .line 185
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtRegist:Landroid/widget/TextView;

    if-ne p1, v0, :cond_5

    .line 186
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->goRegist()V

    goto :goto_0

    .line 187
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mTxtGetVertift:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->checkMsgInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->getMsg()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 80
    const-string v1, "Youku"

    const-string v2, "PhoneRegistFragment onCreateView"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAG"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mCurrentStart:I

    .line 83
    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 84
    const v1, 0x7f03012f

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->initView()V

    .line 93
    iget-object v1, p0, Lcom/tudou/ui/fragment/PhoneRegistFragment;->mFragmentView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 137
    const-string v0, "Youku"

    const-string v1, "PhoneRegistFragment onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PhoneRegistFragment;->initTitle()V

    .line 139
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 140
    return-void
.end method
