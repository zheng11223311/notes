.class public Lcom/tudou/ui/fragment/PasswordSetFragment;
.super Lcom/youku/ui/YoukuFragment;
.source "PasswordSetFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PasswordSetFragment"


# instance fields
.field private mCancel1:Landroid/view/View;

.field private mEdtPassword:Landroid/widget/EditText;

.field private mIsPassShow:Z

.field private mLightShowHandler:Landroid/os/Handler;

.field private mTxtPass:Landroid/widget/TextView;

.field private mTxtPwdSet:Landroid/widget/TextView;

.field private mTxtShowPass:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/youku/ui/YoukuFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mIsPassShow:Z

    .line 215
    new-instance v0, Lcom/tudou/ui/fragment/PasswordSetFragment$3;

    invoke-direct {v0, p0}, Lcom/tudou/ui/fragment/PasswordSetFragment$3;-><init>(Lcom/tudou/ui/fragment/PasswordSetFragment;)V

    iput-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mLightShowHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tudou/ui/fragment/PasswordSetFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PasswordSetFragment;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->autoRemeber()V

    return-void
.end method

.method static synthetic access$100(Lcom/tudou/ui/fragment/PasswordSetFragment;)Lcom/tudou/ui/activity/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PasswordSetFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PasswordSetFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtPwdSet:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PasswordSetFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tudou/ui/fragment/PasswordSetFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tudou/ui/fragment/PasswordSetFragment;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtShowPass:Landroid/widget/TextView;

    return-object v0
.end method

.method private autoRemeber()V
    .locals 3

    .prologue
    .line 211
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v0

    .line 212
    .local v0, "auserBean":Lcom/youku/vo/UserBean;
    const-string v1, "email"

    invoke-virtual {v0}, Lcom/youku/vo/UserBean;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tudou/android/Youku;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method

.method private checkInput()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v2, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "password":Ljava/lang/String;
    invoke-static {}, Lcom/youku/util/Util;->hasInternet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 159
    const v2, 0x7f0d02c3

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    .line 172
    :goto_0
    return v1

    .line 165
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 166
    const v2, 0x7f0d0318

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 169
    const v2, 0x7f0d0319

    invoke-static {v2}, Lcom/youku/util/Util;->showTips(I)V

    goto :goto_0

    .line 172
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 98
    iget-object v3, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c0094

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 99
    .local v1, "statusBarView":Landroid/view/View;
    invoke-static {v1}, Lcom/youku/util/Util;->showsStatusBarView(Landroid/view/View;)V

    .line 101
    iget-object v3, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c06b1

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 102
    .local v2, "txt_title":Landroid/widget/TextView;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    const-string v3, "\u8bbe\u7f6e\u5bc6\u7801"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v3, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c024f

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 105
    .local v0, "img_back":Landroid/widget/ImageView;
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    new-instance v3, Lcom/tudou/ui/fragment/PasswordSetFragment$1;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/PasswordSetFragment$1;-><init>(Lcom/tudou/ui/fragment/PasswordSetFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v3, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    const v4, 0x7f0c0223

    invoke-virtual {v3, v4}, Lcom/tudou/ui/activity/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtPass:Landroid/widget/TextView;

    .line 123
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0572

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    .line 69
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0573

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtShowPass:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c0574

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtPwdSet:Landroid/widget/TextView;

    .line 72
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0c051c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mCancel1:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtShowPass:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mCancel1:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtPwdSet:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mCancel1:Landroid/view/View;

    iget-object v2, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mLightShowHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/tudou/ui/fragment/LoginFragment;->setOnFocusChangeListenerForPassword(Landroid/widget/EditText;Landroid/view/View;Landroid/os/Handler;)V

    .line 79
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mLightShowHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 81
    return-void
.end method

.method private setPwd()V
    .locals 5

    .prologue
    .line 176
    iget-object v3, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtPwdSet:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 177
    iget-object v3, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "pwdTxt":Ljava/lang/String;
    invoke-static {}, Lcom/youku/vo/UserBean;->getInstance()Lcom/youku/vo/UserBean;

    move-result-object v2

    .line 179
    .local v2, "userBean":Lcom/youku/vo/UserBean;
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d031a

    invoke-static {v3, v4}, Lcom/youku/widget/YoukuLoadingDialog;->show(Landroid/content/Context;I)V

    .line 180
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/youku/vo/UserBean;->setPassWord(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/youku/service/login/LoginManager;->getInstance()Lcom/youku/service/login/ILogin;

    move-result-object v0

    .line 183
    .local v0, "login":Lcom/youku/service/login/ILogin;
    new-instance v3, Lcom/tudou/ui/fragment/PasswordSetFragment$2;

    invoke-direct {v3, p0}, Lcom/tudou/ui/fragment/PasswordSetFragment$2;-><init>(Lcom/tudou/ui/fragment/PasswordSetFragment;)V

    invoke-interface {v0, v2, v3}, Lcom/youku/service/login/ILogin;->reversePassword(Lcom/youku/vo/UserBean;Lcom/youku/service/login/ILogin$ICallBack;)V

    .line 205
    return-void
.end method

.method private setSelection(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "aEditText"    # Landroid/widget/EditText;

    .prologue
    .line 151
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 152
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/youku/ui/YoukuFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 86
    const-string v0, "Youku"

    const-string v1, "PasswordSetFragment onActivityCreated"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtPwdSet:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 128
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->checkInput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->setPwd()V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtShowPass:Landroid/widget/TextView;

    if-ne p1, v0, :cond_3

    .line 133
    iget-boolean v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mIsPassShow:Z

    if-eqz v0, :cond_2

    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mIsPassShow:Z

    .line 135
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 136
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtShowPass:Landroid/widget/TextView;

    const-string v1, "\u663e\u793a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_1
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->setSelection(Landroid/widget/EditText;)V

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mIsPassShow:Z

    .line 139
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 140
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mTxtShowPass:Landroid/widget/TextView;

    const-string v1, "\u9690\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_3
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mCancel1:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mEdtPassword:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/tudou/ui/fragment/LoginFragment;->setFocus(Landroid/widget/EditText;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->getBaseActivity()Lcom/tudou/ui/activity/BaseActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mActivity:Lcom/tudou/ui/activity/BaseActivity;

    .line 60
    const-string v0, "Youku"

    const-string v1, "PasswordSetFragment onCreateView"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const v0, 0x7f03012d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mFragmentView:Landroid/view/View;

    .line 63
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->initView()V

    .line 64
    iget-object v0, p0, Lcom/tudou/ui/fragment/PasswordSetFragment;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "Youku"

    const-string v1, "PasswordSetFragment onResume"

    invoke-static {v0, v1}, Lcom/youku/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/tudou/ui/fragment/PasswordSetFragment;->initTitle()V

    .line 93
    invoke-super {p0}, Lcom/youku/ui/YoukuFragment;->onResume()V

    .line 94
    return-void
.end method
