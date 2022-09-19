.class public Lcom/tudou/ui/fragment/RegistFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "RegistFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RegistFragment"


# instance fields
.field private mAutoCompleteAdapter:Lcom/tudou/adapter/AutoCompleteAdapter;

.field private mBtnRegist:Landroid/widget/TextView;

.field private mCancel1:Landroid/view/View;

.field private mCancel2:Landroid/view/View;

.field private mCancel3:Landroid/view/View;

.field private mCurrentStart:I

.field private mEdtEmail:Landroid/widget/AutoCompleteTextView;

.field private mEdtNickname:Landroid/widget/EditText;

.field private mEdtPassword:Landroid/widget/EditText;

.field private mIsPassShow:Z

.field private mLightShowHandler:Landroid/os/Handler;

.field private mRegistCheckBox:Landroid/widget/CheckBox;

.field private mTxtAgreement:Landroid/widget/TextView;

.field private mTxtShowPass:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mIsPassShow:Z

    .line 282
    new-instance v0, Lcom/tudou/ui/fragment/RegistFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/RegistFragment$3;-><init>(Lcom/tudou/ui/fragment/RegistFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mLightShowHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/RegistFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RegistFragment;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RegistFragment;->autoRemeber()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/RegistFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RegistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RegistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mBtnRegist:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RegistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtEmail:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RegistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtNickname:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RegistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tudou/ui/fragment/RegistFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/RegistFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtShowPass:Landroid/widget/TextView;

    return-object v0
.end method

.method private autoRemeber()V
    .locals 3

    .prologue
    .line 278
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 279
    .local v0, "auserBean":Lcom/youku/vo/UserBean;
    const-string v1, "email"

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private checkInput()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 191
    iget-object v4, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v4}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "email":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtNickname:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 193
    .local v1, "nickName":Ljava/lang/String;
    iget-object v4, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "password":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v4

    if-nez v4, :cond_0

    .line 195
    const v4, 0x7f0d02c3

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    .line 222
    :goto_0
    return v3

    .line 197
    :cond_0
    iget-object v4, p0, Lcom/tudou/ui/fragment/RegistFragment;->mRegistCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_1

    .line 198
    const-string v4, "\u53ea\u6709\u540c\u610f\u534f\u8bae\u624d\u80fd\u6ce8\u518c"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-static {v0}, Lcom/youku/util/Util;->checkEmail(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 204
    const v4, 0x7f0d011e

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-static {v1}, Lcom/youku/util/Util;->getStringLeng(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    if-le v4, v5, :cond_3

    .line 210
    const-string v4, "\u6635\u79f0\u5b57\u6570\u8fc7\u591a\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x10

    if-le v4, v5, :cond_4

    .line 216
    const v4, 0x7f0d0318

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 218
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_5

    .line 219
    const v4, 0x7f0d0319

    invoke-static {v4}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 222
    :cond_5
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private doRegist()V
    .locals 9

    .prologue
    .line 226
    const-string v7, "\u6ce8\u518c\u9875\u6ce8\u518c\u6309\u94ae\u70b9\u51fb"

    const-string v8, "\u6ce8\u518c"

    invoke-static {v7, v8}, Lcom/tudou/ui/activity/RegistActivity;->trackExtendCustomEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v7, p0, Lcom/tudou/ui/fragment/RegistFragment;->mBtnRegist:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 229
    iget-object v7, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtEmail:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "email":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 231
    .local v5, "password":Ljava/lang/String;
    iget-object v7, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtNickname:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "nickName":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v6

    .line 233
    .local v6, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {v6, v0}, Lcom/youku/vo/UserBean;->setEmail(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6, v4}, Lcom/youku/vo/UserBean;->setNickName(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    rem-int/lit8 v7, v7, 0x20

    rsub-int/lit8 v1, v7, 0x20

    .line 236
    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 237
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 239
    :cond_0
    invoke-virtual {v6, v1}, Lcom/youku/vo/UserBean;->setPadding(I)V

    .line 240
    invoke-static {v5}, Lcom/youku/util/AESPlus;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/youku/vo/UserBean;->setPassWord(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v3

    .line 243
    .local v3, "login":Lcom/youku/service/login/ILogin;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0d039c

    invoke-static {v7, v8}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 244
    new-instance v7, Lcom/tudou/ui/fragment/RegistFragment$2;

    invoke-direct {v7, p0}, Lcom/tudou/ui/fragment/RegistFragment$2;-><init>(Lcom/tudou/ui/fragment/RegistFragment;)V

    invoke-interface {v3, v6, v7}, Lcom/youku/service/login/ILogin;->register(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 275
    return-void
.end method

.method private initTitle()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v2, p0, Lcom/tudou/ui/fragment/RegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v3, 0x7f0c00df

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 136
    .local v1, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    const v2, 0x7f0d039f

    invoke-virtual {p0, v2}, Lcom/tudou/ui/fragment/RegistFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v2, p0, Lcom/tudou/ui/fragment/RegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v3, 0x7f0c024f

    invoke-virtual {v2, v3}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 140
    .local v0, "img_back":Landroid/widget/ImageView;
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    new-instance v2, Lcom/tudou/ui/fragment/RegistFragment$1;

    invoke-direct {v2, p0}, Lcom/tudou/ui/fragment/RegistFragment$1;-><init>(Lcom/tudou/ui/fragment/RegistFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtEmail:Landroid/widget/AutoCompleteTextView;

    .line 88
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtNickname:Landroid/widget/EditText;

    .line 89
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0572

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    .line 90
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c057e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mBtnRegist:Landroid/widget/TextView;

    .line 92
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0582

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtAgreement:Landroid/widget/TextView;

    .line 93
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0581

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mRegistCheckBox:Landroid/widget/CheckBox;

    .line 94
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0573

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtShowPass:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mBtnRegist:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtAgreement:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtShowPass:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c051c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel1:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c051d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel2:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c05ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel3:Landroid/view/View;

    .line 104
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel2:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel3:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtEmail:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel1:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/RegistFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 109
    new-instance v0, Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tudou/adapter/AutoCompleteAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mAutoCompleteAdapter:Lcom/tudou/adapter/AutoCompleteAdapter;

    .line 110
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtEmail:Landroid/widget/AutoCompleteTextView;

    iget-object v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mAutoCompleteAdapter:Lcom/tudou/adapter/AutoCompleteAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 112
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtNickname:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel2:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/RegistFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListener(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 113
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel3:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/RegistFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListenerForPassword(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 115
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mLightShowHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    return-void
.end method

.method private setSelection(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "aEditText"    # Landroid/widget/EditText;

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 188
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "Youku"

    const-string v1, "RegistFragment onActivityCreated"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mBtnRegist:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RegistFragment;->checkInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RegistFragment;->doRegist()V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtAgreement:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 159
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RegistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "http://www.tudou.com/about/account.php"

    const-string v2, "regist_agree"

    const-string v3, "\u6ce8\u518c\u534f\u8bae"

    invoke-static {v0, v1, v2, v3}, Lcom/youku/util/Util;->goWebShow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtShowPass:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 163
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mIsPassShow:Z

    if-eqz v0, :cond_3

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mIsPassShow:Z

    .line 165
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 166
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtShowPass:Landroid/widget/TextView;

    const-string v1, "\u663e\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/RegistFragment;->setSelection(Landroid/widget/EditText;)V

    goto :goto_0

    .line 168
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mIsPassShow:Z

    .line 169
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 170
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mTxtShowPass:Landroid/widget/TextView;

    const-string v1, "\u9690\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel1:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtEmail:Landroid/widget/AutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtEmail:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto :goto_0

    .line 176
    :cond_5
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel2:Landroid/view/View;

    if-ne p1, v0, :cond_6

    .line 177
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtNickname:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtNickname:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto :goto_0

    .line 179
    :cond_6
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCancel3:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/tudou/ui/fragment/RegistFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/RegistFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 76
    const-string v1, "Youku"

    const-string v2, "RegistFragment onCreateView"

    invoke-static {v1, v2}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    invoke-virtual {v1}, Lcom/tudou/ui/activity/BaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAG"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mCurrentStart:I

    .line 79
    const-string v1, "TAG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 80
    const v1, 0x7f030136

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    .line 82
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RegistFragment;->initView()V

    .line 83
    iget-object v1, p0, Lcom/tudou/ui/fragment/RegistFragment;->mFragmentView:Landroid/view/View;

    return-object v1
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "Youku"

    const-string v1, "RegistFragment onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/tudou/ui/fragment/RegistFragment;->initTitle()V

    .line 130
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 131
    return-void
.end method
